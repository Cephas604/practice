=begin
#10-2
require "sinatra"
get "/omikugi" do
  ["大吉", "中吉", "末吉", "凶"].sample
end
#10-3
require "net/http"
require "uri"
uri_hi = URI.parse("http://localhost:4567/hi")
uri_drink = URI.parse("http://localhost:5678/drink")
puts Net::HTTP.get(uri_hi)
puts Net::HTTP.get(uri_drink)
=end
