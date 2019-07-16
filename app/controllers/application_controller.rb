class ApplicationController < ActionController::Base
  before_action :set_locale

  def set_locale
    I18n.locale = params[:locale]
    locale_to_cookie(I18n.locale)
  end

  def locale_to_cookie(locale)
    cookies[:locale] = {
      value: locale
    }
  end

  def default_url_options(_options = {})
    { locale: I18n.locale }
  end
end
