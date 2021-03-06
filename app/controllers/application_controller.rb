class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :prepare_meta_tags, if: "request.get?"
  before_action :set_locale

  if Rails.env.production? or Rails.env.staging?
    rescue_from ActiveRecord::RecordNotFound, ActionController::UnknownFormat do |exception|
      render_404
    end

    rescue_from ActionController::InvalidCrossOriginRequest, ActionController::InvalidAuthenticityToken do |exception|
      begin
        self.response_body = nil
        redirect_to root_url, :alert => I18n.t('errors.messages.invalid_auth_token')
      rescue AbstractController::DoubleRenderError => e
      end
    end
  end

  def render_404
    begin
      self.response_body = nil
      render file: "#{Rails.root}/public/404.html", layout: false, status: 404
    rescue AbstractController::DoubleRenderError => e
    end
  end

  def errors_to_flash(model)
    flash[:notice] = model.errors.full_messages.join('<br>').html_safe
  end

  def prepare_meta_tags(options={})
    set_meta_tags build_meta_options(options)
  end

  def build_meta_options(options)
    site_name = "Democracy More, Parti"
    title = view_context.strip_tags(options[:title]) || "Democracy More, Parti"
    image = options[:image] || view_context.image_url('seo.png')
    url = options[:url] || root_url
    description = view_context.strip_tags(options[:description]) || " 더 민주적인 세상, 빠띠"
    {
      title:       title,
      reverse:     true,
      image:       image,
      description: description,
      keywords:    "빠띠, 우주당, 민주주의 툴킷, 민주주의 캠페인, 정치참여, 정치, 민주주의, IT, 툴킷, 정치캠페인, 더나은민주주의, digital democracy, 시민, 직접민주주의, 일상의 민주주의, 공공재, 공론장, 숙의민주주의",
      canonical:   url,
      twitter: {
        site_name: site_name,
        site: '@parti_coop',
        card: 'summary',
        title: title,
        description: description,
        image: image
      },
      og: {
        url: url,
        site_name: site_name,
        title: title,
        image: image,
        description: description,
        type: 'website'
      }
    }
  end

  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end
end
