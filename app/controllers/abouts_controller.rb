# frozen_string_literal: true

class AboutsController < InheritedResources::Base
  private

  def about_params
    params.require(:about).permit(:name, :content)
  end
end
