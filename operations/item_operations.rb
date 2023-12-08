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
end
