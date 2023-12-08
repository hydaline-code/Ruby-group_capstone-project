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

  new_book = Book.new( nil, title, author, published_date, cover_state, publisher)
  items << new_book
  puts 'Book  added successfully!'
end

# def add_book(items)
#   print 'Enter Book Title: '
#   title = gets.chomp
#   print 'Enter Author: '
#   author = gets.chomp
#   print 'Enter Published Date (YYYY-MM-DD): '
#   published_date = Date.parse(gets.chomp)
#   print 'Enter Cover State: '
#   cover_state = gets.chomp
#   print 'Enter Publisher: '
#   publisher = gets.chomp

#   puts "DEBUG: Before creating new_book. items: #{items.inspect}"

#   new_book = Book.new(nil, title, author, published_date, cover_state, publisher)

#   puts "DEBUG: After creating new_book. new_book: #{new_book.inspect}"

#   items << new_book

#   puts "DEBUG: After appending new_book to items. items: #{items.inspect}"

#   puts 'Book  added successfully!'
# end


# def add_book(items)
#   puts 'Published date (yyyy-mm-dd):'
#   publish_date = gets.chomp
#   puts 'Publisher name:'
#   publisher = gets.chomp
#   puts 'Cover state(good/bad):'
#   cover_state = gets.chomp
#   @books << Book.new(publish_date, publisher, cover_state)
#   puts 'Book created successfully!'
# end

# def list_books(items)
#   @books.each_with_index do |book, index|
#     puts "[#{index + 1}] [Book] #{book}"
#   end
# end

def list_books(items)
  puts "\nList of all Books:"
  books = items.select { |item| item.is_a?(Book) }
  books.each do |book|
    puts "ID: #{book.id}, Title: #{book.title}, Author: #{book.author}," \
         "Publish Date: #{book.publish_date}, Cover State: #{book.cover_state}"
  end
end