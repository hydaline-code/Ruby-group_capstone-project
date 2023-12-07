def add_book(items)
  puts "\nAdding a Book:"
  print 'Enter Book Title: '
  title = gets.chomp
  print 'Enter Author: '
  author = gets.chomp
  print 'Enter Published Date (YYYY-MM-DD): '
  published_date = Date.parse(gets.chomp)
  print 'Enter Cover State: '
  cover_state = gets.chomp
  print 'Enter Publisher: '
  publisher = gets.chomp

  # new_book_id = items.empty? ? 1 : items.max_by(&:id).id + 1
  new_book = Book.new(nil, title, author, published_date, cover_state, publisher)

  items << new_book
  puts "Book with ID #{new_book.id} added successfully!"
end

