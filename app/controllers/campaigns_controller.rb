class CampaignsController < ApplicationController
  def campaign
      @campaigns = Campaign.all.reverse_order
      render "campaigns/campaign"
  end
end
