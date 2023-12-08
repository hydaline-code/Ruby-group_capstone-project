def list_books(items)
  puts "\nList of all Books:"
  books = items.select { |item| item.is_a?(Book) }
  books.each do |book|
    puts "ID: #{book.id}, Title: #{book.title}, Author: #{book.author}," \
         "Publish Date: #{book.publish_date}, Cover State: #{book.cover_state}"
  end
end

def list_labels(items)
  puts "\nList of all Labels:"
  labels = items.select { |item| item.is_a?(Label) }
  labels.each { |label| puts "ID: #{label.id}, Title: #{label.title}, Color: #{label.color}" }
end
