require "vagrant"

module VagrantPlugins
  module CommandAddress
    autoload :Errors, File.expand_path("../errors", __FILE__)

    class Plugin < Vagrant.plugin("2")
      name "address"
      description <<-DESC
      The `address` command outputs a public IP address of a guest machine
      DESC

      command("address", primary: false) do
        require_relative "command"
        init!
        Command
      end

      protected

      def self.init!
        return if defined?(@_init)
        I18n.load_path << File.expand_path("../locales/en.yml", __FILE__)
        I18n.reload!
        @_init = true
      end

    end
  end
end
