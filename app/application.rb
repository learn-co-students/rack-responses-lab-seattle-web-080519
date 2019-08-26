class Application

    def call(env)
        resp = Rack::Response.new
        currentTime = Time.now
        case rightNow = currentTime.hour
        when 0...12
            resp.write "Good Morning!"
        when 12..24
            resp.write "Good Afternoon"
        else
            "not valid time"
        end
        resp.finish
    end

end
