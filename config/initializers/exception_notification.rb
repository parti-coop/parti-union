require 'exception_notification/rails'

ExceptionNotification.configure do |config|
  config.ignore_if do |exception, options|
    not(Rails.env.production?) and not(Rails.env.staging?)
  end

  config.add_notifier :slack, {
    username: "Union #{Rails.env}",
    webhook_url: ENV["SLACK_WEBHOOK_URL"],
    additional_parameters: {
      mrkdwn: true
    }
  }
end
