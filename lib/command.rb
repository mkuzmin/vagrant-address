module VagrantPlugins
  module GuestIP
    class Command < Vagrant.plugin(2, :command)
      def self.synopsis
        'outputs IP address of a guest machine'
      end

      def execute
        with_target_vms(nil, {:single_target=>true}) do |machine|
          @env.ui.info(machine.guest.capability(:read_ip_address))
        end
      end
    end
  end
end
