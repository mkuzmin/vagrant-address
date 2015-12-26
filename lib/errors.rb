module VagrantPlugins
  module CommandAddress
    module Errors
      class AddressError < Vagrant::Errors::VagrantError
        error_namespace("vagrant_address.errors")
      end

      class NotRunning < AddressError
        error_key(:not_running)
      end
      class Unknown < AddressError
        error_key(:unknown)
      end
    end
  end
end
