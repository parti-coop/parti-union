class PagesController < ApplicationController
  def campaign_detail
    render "campaigns/#{params[:slug]}"
  end

  def platform_detail
    render "platforms/#{params[:slug]}"
  end
end
