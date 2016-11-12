require 'nokogiri'
require 'open-uri'

# Fetch and parse HTML document
page = Nokogiri::HTML(open('https://news.google.com'))


# page.css('h2.esc-lead-article-title').each do |title|
#   puts title.content
# end

# page.css(".esc-lead-article-title-wrapper").each do |body|
#   puts body.content
# end

page.css(".al-attribution-timestamp").each do |time|
  puts time.content
end

#ruby scrape.rb



# page.css('h2.esc-lead-article-title').text
# page.css(".esc-lead-article-title-wrapper").text
# page.css(".al-attribution-timestamp").text
