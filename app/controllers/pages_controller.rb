class PagesController < ApplicationController
  def home
    @slides = Slide.priority.recent
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

  def about
    render "abouts/index"
  end
end
