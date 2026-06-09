require "twirp"
require_relative "hello_world/service_pb"
require_relative "hello_world/service_twirp"

class HelloWorldHandler
  def hello(req, env)
    if req.name.empty?
      return Twirp::Error.invalid_argument("name is mandatory")
    end

    {
      message: "Hello #{req.name}"
    }
  end
end
