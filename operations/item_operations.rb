# item_operations.rb
def list_books(items)
  puts "\nList of Books:"
  books = items.select { |item| item.is_a?(Book) }
  books.each { |book| puts "ID: #{book.id}, Title: #{book.title}, Author: #{book.author}, Publish Date: #{book.publish_date}, Cover State: #{book.cover_state}" }
end


def list_labels(items)
  puts "\nList of Labels:"
  labels = items.select { |item| item.is_a?(Label) }
  labels.each { |label| puts "ID: #{label.id}, Title: #{label.title}, Color: #{label.color}" }
end

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

