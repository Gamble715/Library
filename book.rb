class Book
	attr_reader :title, :author, :description
	attr_accessor :reader, :due_date

	def initialize(title, author, description)
		@title = title
		@author = author 
		@description = description
		@reader = ''
		@due_date = 0
	end
end