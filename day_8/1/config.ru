require "./my_app"
#doesn´t need a require 'rack'- rackup already loads it. 

run MyApp.new

#version 1 in one file.
#run lambda { |env| [200, {"Content-Type" => "text/plain"}, ["Hello. The time is #{Time.now}"]] }
