require_relative 'user.rb'
require_relative 'book.rb'
require_relative 'library'

library = Library.new
gamble = User.new('gamble')


book_a = Book.new('Harry Potter', 'J.K. Rowling', 'Childrens fantasy fiction')
book_b = Book.new('Thinking, Fast and Slow', 'Daniel Kahneman', 'Phycology and behavioral economics non-fiction')
book_c = Book,new('Foundation', 'Isaac Asimov', 'Classic sci-fi fiction')


library.add_book(book_a) 
library.add_book(book_b) 
library.add_book(book_c)

book_a.status = "Lost"
book_b.status = "Available" 
book_c.status = "Overdue"

library.list_overdue