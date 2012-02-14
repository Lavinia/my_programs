require "nokogiri"
require "open-uri"

#fetch data från the web, it gets html and everything.
doc = Nokogiri::HTML(open("http://rubylearning.com/"))

#Search with XPath
puts doc.xpath("//h2[@id='slogan']").first.content
#output: "Helping Ruby programmers become Awesome!"

#search with css3
puts doc.css("#footer p strong:first-child")[0].content
#output: "Rubylearning.com - A Ruby Tutorial"