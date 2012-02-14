require "nokogiri"
require "open-uri"

#fetch data från the web, it gets html and everything.
doc = Nokogiri::HTML(open("http://rubylearning.com/"))

