class LevelInfo
	attr_accessor :level, :venue, :stock, :account
	def initialize(level, venue, stock, account)
		@level = level
		@venue = venue
		@stock = stock
		@account = account
	end	
end