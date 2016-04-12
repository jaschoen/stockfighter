#load 'api_info.rb'
require_relative 'StockfighterAPI'
require_relative 'LevelInfo'
require_relative 'level_one'

this_key = StockfighterAPI.new
this_level = LevelInfo.new(1.to_s, "FKSEX", "PEIM", "SW14934361")

this_level_one = LevelOne.new(1.to_s, "FKSEX", "PEIM", "SW14934361")

puts "\nREADY TRADER ONE...\n\n"
puts "Initialized with API KEY: " + this_key.api_key
puts "Target API URL: " + this_key.base_url

puts "Level: " + this_level_one.level
puts "Venue: " + this_level_one.venue
puts "Stock: " + this_level_one.stock
puts "Account: " + this_level_one.account

this_key.isApiUp
if this_key.IsVenueUp(this_level_one.venue)
	puts "SUCCESS: " + this_level_one.venue
else
	puts "FAIL: " + this_level_one.venue
end