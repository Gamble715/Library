class Book
	attr_accessor :title, :author, :description, :reader, :due_date, :status

	def initialize(title, author, description)
		@title = title
		@author = author 
		@description = description
		@reader = ''
		@due_date = 0
		@status = 'Available'
	end

end