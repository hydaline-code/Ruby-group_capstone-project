def add_book(items)
  print 'Enter Book Title: '
  title = gets.chomp
  print 'Enter Published Date (YYYY-MM-DD): '
  published_date = Date.parse(gets.chomp)
  print 'Enter Cover State: '
  cover_state = gets.chomp
  print 'Enter Publisher: '
  publisher = gets.chomp

  new_book = Book.new( nil, title, published_date, cover_state, publisher)
  items << new_book
  puts 'Book  added successfully!'
end

def list_books(items)
  puts "\nList of all Books:"
  books = items.select { |item| item.is_a?(Book) }
  books.each do |book|
    puts "ID: #{book.id}, Title: #{book.title}, Publish Date: #{book.publish_date}, Cover State: #{book.cover_state}"
  end
end