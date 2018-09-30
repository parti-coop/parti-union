require 'net/http'

class PagesController < ApplicationController
  def home
    @slides = Slide.priority.recent
    @products = Product.all
    @team = Team.all
    @campaigns = Campaign.all
  end
  def subscribe
    @slides = Slide.priority.recent
    @products = Product.all
    @team = Team.all
    @subscribe = "preload-modal"
    @campaigns = Campaign.all
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

  def english
  end

  def stibee
    data = params[:email]
    begin
      uri = URI.parse('https://stibee.com/api/v1.0/lists/8eGeZJ_Ir8_jNilIvX8XV2a6BQ==/public/subscribers')
      body = URI.encode_www_form("email": params[:email])
      http = Net::HTTP.new(uri.host, uri.port)
      http.use_ssl = true
      http.verify_mode = OpenSSL::SSL::VERIFY_NONE
      request = Net::HTTP::Post.new(uri.request_uri)
      request.content_type = "application/x-www-form-urlencoded"
      request.body = body

      # Send the request
      response = http.request(request)
      flash[:success] = "Success !"
      return redirect_back(fallback_location: root_path)
    rescue => e
      flash[:error] = "Failed. Please check your email"
      return redirect_back(fallback_location: root_path)
    end
  end
end
