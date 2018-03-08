class PlatformsController < ApplicationController
  def platform
      render "platforms/#{params[:slug]}"
  end
end
