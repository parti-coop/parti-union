class PagesController < ApplicationController
  def home
    @slides = Slide.priority.recent
    @products = Product.all
    @team = Team.all
  end
  def subscribe
    @slides = Slide.priority.recent
    @products = Product.all
    @team = Team.all
    @subscribe = "preload-modal"
    render "home"
  end
  def campaign_detail
    if params[:slug] == 'index'
      render_404 and return
    end

    render "campaigns/#{params[:slug]}"
  end

  def platform_detail
    render "platforms/#{params[:slug]}"
  end
end
