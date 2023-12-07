def add_book(items)
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

  new_book = Book.new(nil, title, author, published_date, cover_state, publisher)
  items << new_book
  puts 'Book  added successfully!'
end
