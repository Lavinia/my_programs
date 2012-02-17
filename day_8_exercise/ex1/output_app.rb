class OutputApp
  
  def call(env)
    [200, {"Content-Type" => "text/plain"}, ["You entered: #{ARGV[0]}"]]
  end
  
end