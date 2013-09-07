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

# Change  book status to "lost" if assigned lost status.
	def is_lost
		book.stats = 'Lost'
	end

	

# Change book status to "overdue" if reader keeps book past due_date
	def is_overdue
		if (Time.now).to_i > book.due_date && book.status == "Checked Out"
			book.status = "Overdue"
			puts "#{book.title} is overdue!"
		elsif book.status == "Avalable"
			puts "#{book.title} is available."
		else
			puts "#{book.title} is checked out but not overdue."
		end
	end


	def return_book(book, user)
		user.book_checked_out.delete(book)
		book.status = "Available"
	end

	def list_overdue
		@books.each do |book|
			if book.status == "Overdue"
				puts "#{book.title}"
			end
		end
	end
end


