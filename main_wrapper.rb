#load 'api_info.rb'
require 'rubygems'
require 'awesome_print'
require_relative 'StockfighterAPI'
require_relative 'LevelInfo'
require_relative 'level_one'
require 'json'

_interface = StockfighterAPI.new

ap _interface.isApiUp

ap _interface.isVenueUp("TESTEX")
ap _interface.error
ap _interface.isVenueUp("test_fail")
ap _interface.error

