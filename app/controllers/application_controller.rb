class ApplicationController < ActionController::Base
  extend Faalis::I18n::Locale
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :setup_view_path

  private

  def setup_view_path
    if Rails.application.try(:site)
      logger.debug("Site's template prepended to views path")
      template_name = Rails.application.site.template
      prepend_view_path("app/views/#{template_name}")
    end
  end
end
