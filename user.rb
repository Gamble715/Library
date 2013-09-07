class User
	attr_reader :name
	attr_accessor :book_checked_out

	def initialize(name)
		@name = name	
		@book_checked_out = Array.new
	end

end 