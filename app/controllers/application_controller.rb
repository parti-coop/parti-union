class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :prepare_meta_tags, if: "request.get?"

  def errors_to_flash(model)
    flash[:notice] = model.errors.full_messages.join('<br>').html_safe
  end

  def prepare_meta_tags(options={})
    set_meta_tags build_meta_options(options)
  end

  def build_meta_options(options)
    site_name = "빠띠유니온 PartiUnion"
    title = view_context.strip_tags(options[:title]) || "빠띠유니온"
    image = options[:image] || view_context.image_url('seo.png')
    url = options[:url] || root_url
    description = view_context.strip_tags(options[:description]) || "빠띠유니온 입니다"
    {
      title:       title,
      reverse:     true,
      image:       image,
      description: description,
      keywords:    "시민, 정치, 국회, 입법, 법안, 민주주의, 온라인정치, 정치참여",
      canonical:   url,
      twitter: {
        site_name: site_name,
        site: '@parti_xyz',
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
end
