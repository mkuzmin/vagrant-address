module VagrantPlugins
  module GuestIP
    class Command < Vagrant.plugin(2, :command)
      def execute
        puts "Hello!"
      end
    end
  end
end
