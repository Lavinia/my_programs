require "rack"

harder_rack = lambda { |env| [200, {"Content-Type" => "text/plain"}, ["Command line argument was: #{ARGV[0]}"]] }
Rack::Handler::WEBrick.run harder_rack, :Port => 8500