module StyleGuide
  class StyleController < StyleGuide::ApplicationController
    before_filter :load_sections
    before_filter :load_config

    def index
      @current_section = @sections.first
      render :show
    end

    def show
      @current_section = @sections.detect { |section| section.id == params[:id] }
    end
  end
end
