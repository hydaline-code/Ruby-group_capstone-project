def add_music_album(items)
  puts 'Enter Album Title:'
  title = gets.chomp
  puts 'Enter Publish Date(YYYY-MM-DD):'
  published_date = Date.parse(gets.chomp)
  puts 'Is it on Spotify? (true/false):'
  on_spotify = gets.chomp == 'true'
  puts 'Enter Genre Name:'
  genre_name = gets.chomp
  genre = Genre.new(items.size + 1, genre_name)
  new_album = MusicAlbum.new(items.size + 1, title, published_date, on_spotify, genre)

  add_item(new_album, items)
end

def add_item(item, items)
  items << item
  puts "#{item.class.name} added successfully."
end
