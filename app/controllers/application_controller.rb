class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :titulo, :google_key

  def titulo
    @title = ""
  end

  def google_key
    google_api_key = "123456789"
  end
end
