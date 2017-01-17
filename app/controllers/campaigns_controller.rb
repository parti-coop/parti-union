class CampaignsController < ApplicationController
  def show
    render "campaigns/#{params[:slug]}"
  end
end
