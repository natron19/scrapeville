class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # def google_news
  #   require 'open-uri'
  #   page = Nokogiri::HTML(open('https://news.google.com'))
  #   render text: page
  # end



end