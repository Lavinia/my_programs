require "net/http" #loads net/hhtp library
require "open-uri"
require "hpricot"
require "nokogiri"

uri = 'http://satishtalim.github.com/webruby/chapter3.html'
word_regexp = /\bthe\b/i
output_string =  "occurences of the word 'the' in the page."

#plain old URI
connected_uri = URI(uri) #connects to the URL
puts "URI only has: #{Net::HTTP.get(connected_uri).scan(word_regexp).count} #{output_string}" 

# Net HTTP
url = URI.parse(uri)
Net::HTTP.start(url.host, url.port) do |http|
  req = Net::HTTP::Get.new(url.path)
  puts "URI parse has #{http.request(req).body.scan(word_regexp).count} #{output_string}"
end

#open-URI
f = open(uri)
puts "open-URI has #{f.readlines.join.scan(word_regexp).count} #{output_string}"

#Hpricot
page = Hpricot(open(uri)) 
puts "Hpricot has #{page.to_s.scan(word_regexp).count} #{output_string}"

#Nokogiri
doc = Nokogiri::HTML(open(uri))
puts "Nokogiri has #{doc.to_s.scan(word_regexp).count} #{output_string}"