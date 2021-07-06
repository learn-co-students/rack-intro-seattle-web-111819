class Application

  def call(env)
    resp = Rack::Response.new
    resp.write "Hello, my name is Jacob and I hate you."
    resp.finish
  end

end



