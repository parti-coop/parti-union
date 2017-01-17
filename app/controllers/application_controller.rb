class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def errors_to_flash(model)
    flash[:notice] = model.errors.full_messages.join('<br>').html_safe
  end
end
