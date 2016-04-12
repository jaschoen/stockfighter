require 'rubygems'
require 'httparty'
require 'json'
require 'openssl'
OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE

apikey = "883a422ed6a5e442f7be2b9fbd0bc6269131241e"
venue = "POBEX"   # Replace this with your real value.
stock = "MIYI"  #Fun fact: Japanese programmers often use "hogehoge" where Americans use "foobar."  You should probably replace this with your real value.
base_url = "https://api.stockfighter.io/ob/api"

account = "SY42452455"  # Printed in bold in the level instructions. Replace with your real value.

# Set up the order

order = {
  "account" => account,
  "venue" => venue,
  "symbol" => stock,
  "qty" => 100,
  "direction" => "buy",
  "orderType" => "market"  # See the order docs for what a limit order is
}


response = HTTParty.post("#{base_url}/venues/#{venue}/stocks/#{stock}/orders",
                         :body => JSON.dump(order),
                         :headers => {"X-Starfighter-Authorization" => apikey}
                         )

#Now we analyze the order response

puts response.body