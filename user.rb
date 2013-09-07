class User
	attr_accessor :book_checked_out, :name

	def initialize(name)
		@name = name	
		@book_checked_out = Array.new
	end

end 