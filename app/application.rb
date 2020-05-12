class Application
    
    def call(env)
        resp = Rack::Response.new
        if Time.now.hour < 12
            resp.write "good morning"
        else
            resp.write "good afternoon"
        end
        resp.finish
    end
end