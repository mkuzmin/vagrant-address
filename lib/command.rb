module VagrantPlugins
  module GuestIP
    class Command < Vagrant.plugin(2, :command)
      def self.synopsis
        'outputs IP address of a guest machine'
      end

      def execute
        with_target_vms(nil, {:single_target=>true}) do |machine|
          ip = machine.provider.capability(:public_address)
          message = ENV['TEAMCITY_VERSION'] ? "##teamcity[setParameter name='env.VAGRANT_GUESTIP' value='#{ip}']" : ip
          @env.ui.info(message)
        end
      end
    end
  end
end
