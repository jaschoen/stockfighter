require 'httparty'
require 'openssl'
# OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE

class StockfighterAPI
	attr_accessor :api_key, :base_url, :error, :response
	def initialize
		@api_key = "883a422ed6a5e442f7be2b9fbd0bc6269131241e"
		@base_url = "https://api.stockfighter.io/ob/api"
		@error = nil
	end

	def isApiUp
		# @response = HTTParty.get(self.base_url + "/heartbeat")
		# ok = response.parsed_response["ok"] rescue false
		# raise "Oh no the world is on fire!" unless ok
		# ok
		HTTParty.get(self.base_url + "/heartbeat")
	end

	def isVenueUp(test_venue)
		# begin
			# @response = HTTParty.get(self.base_url + "/venues/" + test_venue.to_s + "/heartbeat")
		# 	ok = response.parsed_response["ok"]
		# 	raise "Oh no the world is on fire!" if !ok.is_a?(TrueClass) 
		# rescue
		# 	#puts "Internal error message: " + response.parsed_response["error"]
		# 	@error = response.parsed_response["error"]
		# 	ok = false
		# end
		# ok
		HTTParty.get(self.base_url + "/venues/" + test_venue.to_s + "/heartbeat")
	end

	#def getStocks(test_venue)
	#	@response = HTTParty.get(self.base_url + "/venues/" + test_venue.to_s + "/stocks")
	#end

end


