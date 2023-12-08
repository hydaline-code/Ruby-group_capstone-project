def list_genres(items)
  puts 'List of all genres:'
  genres = items.select { |item| item.is_a?(MusicAlbum) }.map(&:genre)
  genres.each do |genre|
    puts "Genre ID: #{genre.id}, Name: #{genre.name}" if genre
  end
  genres
end

def list_items(class_name, items)
  items.select { |item| item.is_a?(class_name) }
end

def list_music_albums(items)
  puts 'List of all music albums:'
  music_albums = list_items(MusicAlbum, items)
  music_albums.each do |album|
    puts "Album ID: #{album.id}, Title: #{album.title}, Publish Date: #{album.publish_date}"
  end

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
