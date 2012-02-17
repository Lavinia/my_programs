class MyRequest
  def call(env)
    req = Rack::Request.new(env)
    name =  req.params['name']
    text =  req.params['text']
    
    Rack::Response.new.finish do |result|
      result['Content-Type'] = 'text/plain'
      result.status = 200
      string = "Parameters sent: name - #{name} | text - #{text}"
      result.write string
    end
  end
end