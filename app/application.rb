class Application

    def call(env)
        resp = Rack::Response.new
        
        time = Kernel.rand(1..24)

        if time < 12
        resp.write "Morning!"
        else
        resp.write "Good Afternoon!"
        
        resp.finish
        end
    end
end