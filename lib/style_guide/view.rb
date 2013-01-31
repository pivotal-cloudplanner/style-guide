module StyleGuide
  class View < ActionView::Base
    def protect_against_forgery?
      false
    end

    def controller
      OpenStruct.new({ action_name: nil })
    end
  end
end
