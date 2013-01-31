require 'active_support/concern'

module StyleGuide
  module FormHelpers
    extend ActiveSupport::Concern

    included do
      def protect_against_forgery?
        false
      end

      def controller
        OpenStruct.new({ action_name: nil })
      end

      def method_missing(meth, *args, &block)
        if meth.to_s =~ /(_path|_url)$/
          "/"
        else
          super
        end
      end
    end
  end
end
