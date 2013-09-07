class Book
	attr_accessor :title, :author, :description, :reader, :due_date

	def initialize(title, author, description)
		@title = title
		@author = author 
		@description = description
		@reader = ''
		@due_date = 0
	end

end