require_relative "hello_world/service_pb"
require_relative "hello_world/service_twirp"

client = Example::HelloWorldClient.new("http://localhost:3000/twirp")

resp = client.hello(name: "World")

if resp.error
  warn resp.error
  exit 1
end

puts resp.data.message
