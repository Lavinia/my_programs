require "net/http" #loads net/hhtp library

uri = URI('http://rubylearning.com/data/text.txt') #connects to the URL
res = Net::HTTP.get_response(uri) #sends get request and returns a Net::HTTPresponse object
puts res.code
puts res.message

puts Net::HTTP.get(uri) #get request for text.txt. returns it. 