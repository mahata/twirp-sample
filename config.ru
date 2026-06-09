require_relative "hello_world_handler"

handler = HelloWorldHandler.new
service = Example::HelloWorldService.new(handler)

map "/twirp/#{service.full_name}" do
  run service
end
