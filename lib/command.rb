require 'optparse'

module VagrantPlugins
  module CommandAddress
    class Command < Vagrant.plugin("2", :command)
      def self.synopsis
        "outputs public IP address of a guest machine"
      end

      def execute
        opts = OptionParser.new do |o|
          o.banner = "Usage: vagrant address [name]"
        end
        argv = parse_options(opts)
        return if !argv

        with_target_vms(argv, {:single_target=>true}) do |machine|
          ip = machine.provider.capability(:public_address)
          message = ENV['TEAMCITY_VERSION'] ? "##teamcity[setParameter name='env.VAGRANT_ADDRESS' value='#{ip}']" : ip
          @env.ui.info(message)
        end
      end
    end
  end
end
