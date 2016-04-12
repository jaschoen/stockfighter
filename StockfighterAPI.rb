require 'httparty'
require 'openssl'
require 'json'
require_relative 'LevelInfo'
# OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE

class StockfighterAPI
	attr_accessor :api_key, :base_url, :error, :response, :symbol
	def initialize
		@api_key = "883a422ed6a5e442f7be2b9fbd0bc6269131241e"
		@base_url = "https://api.stockfighter.io/ob/api"
		@error = nil
	end

	def is_api_up
		# @response = HTTParty.get(self.base_url + "/heartbeat")
		# ok = response.parsed_response["ok"] rescue false
		# raise "Oh no the world is on fire!" unless ok
		# ok
		HTTParty.get(self.base_url + "/heartbeat")
	end

	def is_venue_up?(test_venue)
		@response = json_response(HTTParty.get(self.base_url + "/venues/" + test_venue.to_s + "/heartbeat"))
		@error = @response["error"]
		ok = @response["ok"]
	end

	def get_stocks(test_venue)
		@response = json_response(HTTParty.get(self.base_url + "/venues/" + test_venue.to_s + "/stocks"))
		@symbol = @response["symbols"]
	end

	def place_order(level_info)
		
	end

	def json_response(new_response)
		if new_response.headers.content_type.include? "json"
			new_response
		else
			JSON.parse(new_response)
		end
	end

end


