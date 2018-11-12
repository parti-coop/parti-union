require 'net/http'

class PagesController < ApplicationController
  def home
    @slides = Slide.priority.recent
    @products = Product.all
    @team = Team.all
    @campaigns = Campaign.all
  end

  def toolkits
    toolkit_map = {
      "1" => {
        title: "시민입법 프로젝트 툴킷",
        url: "https://www.beautiful.ai/player/-LP-lfy3r2i0OL0AyoN4/"
      },
      "2" => {
        title: "참여형 시민토론 툴킷",
        url: "https://www.beautiful.ai/player/-LOGDznnYIQmwsDZf4wU/"
      },
      "3" => {
        title: "시민 아이데이션 툴킷",
        url: "https://www.beautiful.ai/player/-LPdqpxgYf7cbdCpW2tN/"
      },
      "4" => {
        title: "시민주도 서명운동 툴킷",
        url: "https://www.beautiful.ai/player/-LR4_tJsM1cKTSrhewyL/"
      }
    }
    @toolkit = toolkit_map[params[:key]]

    if browser.device.mobile? or browser.device.tablet?
      flash[:notice] = '다음 페이지로 넘기시려면 본문 내용을 터치해 주세요.'
      prepare_unobtrusive_flash
    end
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
      uri = URI.parse('https://stibee.com/api/v1.0/lists/v1NhKd0XWaKx1-Tx0vc30O7zWlo=/public/subscribers')
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
