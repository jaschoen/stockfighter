#load 'api_info.rb'
require 'rubygems'
require 'awesome_print'
require_relative 'StockfighterAPI'
require_relative 'LevelInfo'
require_relative 'level_one'
require 'json'

this_key = StockfighterAPI.new

# puts "\nREADY TRADER ONE...\n\n"

# puts "IS API UP?? : " + this_key.isApiUp.to_s
# puts "Reponse after isApiUp test: " + this_key.response.to_s

# puts "IS VENUE UP?? : " + this_key.isVenueUp("TESTEX").to_s
# puts "Reponse after isApiUp test: " + this_key.response.to_s

# puts "IS VENUE UP?? : " + this_key.isVenueUp("TEEX").to_s
# puts "Reponse after isApiUp test: " + this_key.response.to_s
# puts "TEST FAIL ERROR MESSAGE: " + this_key.error

ap this_key.isApiUp
# puts
ap this_key.isVenueUp("TESTEX")
ap this_key.isVenueUp("test_fail").parsed_response
# ap JSON.parse(this_key.isVenueUp("test_fail").parsed_response)