# frozen_string_literal: true

class AboutsController < InheritedResources::Base

  def about_params
    params.require(:about).permit(:name, :content)
  end

  def show
    @about = About.all.last
  end
end
