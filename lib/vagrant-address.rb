module VagrantPlugins
  module CommandAddress
    class Plugin < Vagrant.plugin(2)
      name 'address'

      command('address', primary: false) do
        require_relative 'command'
        Command
      end
    end
  end
end
