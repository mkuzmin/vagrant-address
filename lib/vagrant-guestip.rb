module VagrantPlugins
  module GuestIP
    class Plugin < Vagrant.plugin(2)
      name 'guestip'

      command('ip', primary: false) do
        require_relative 'command'
        Command
      end
    end
  end
end
