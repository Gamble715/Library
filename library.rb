class Library

	def initialize(library)
		@books = Array.new
		@library = library
	end

	def add_book(book)
		@books.push(book)
	end

	def checkout_book(book, user)
		if book.due_date < (Time.now).to_i && user.book_checked_out.length < 2
			book.status = "Checked Out"
			book.reader = user.name
			book due_date = (Time.now + 604800).to_i
			user.book_checked_out.push(book)
		elsif book.due_date > (Time.now).to_i
			puts "The book you selected is already checked out."
		elsif user.book_checked_out.lenth > 2
			puts "You cannot check out more than two books."
		elsif book.status == 'Lost'
			puts "The book you selected is lost."
		end
	end

end


