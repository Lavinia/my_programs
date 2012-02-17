class Reverse
  
  def call(env)
    request = Rack::Request.new(env)
    string = request.params['string']
    
    Rack::Response.new.finish do |result|
      result['Content-Type'] = 'text/plain'
      result.status = 200
      output_string = "Your string reversed is: #{string.reverse}."
      result.write output_string
    end
  end
end