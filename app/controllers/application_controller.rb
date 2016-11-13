class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # def google_news
  #   require 'open-uri'
  #   page = Nokogiri::HTML(open('https://news.google.com'))
  #   render text: page
  # end

  rescue_from CanCan::AccessDenied do |exception|
  redirect_to root_path
    flash[:alert] = "Sorry, you are not authorized to access this area!"
  end

end
