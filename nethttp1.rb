require "net/http"

#start opens a TCP connection and HTTP session. It passes the Net::HTTP object to the block and closses the TCPconnection and HTTP session after the block has been executed.

url = URI.parse('http://rubylearning.com/data/text.txt')

Net::HTTP.start(url.host, url.port) do |http|
  req = Net::HTTP::Get.new(url.path)
  puts http.request(req).body
end