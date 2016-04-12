#load 'api_info.rb'
require 'rubygems'
require 'awesome_print'
require_relative 'StockfighterAPI'
require_relative 'LevelInfo'
require_relative 'level_one'
require 'json'

interface = StockfighterAPI.new
levelinfo = LevelInfo.new(1, "TESTEX", "FOOBAR", "EXB123456")

ap interface.is_venue_up?("TESTEX")

ap interface.get_stocks("TESTEX")

