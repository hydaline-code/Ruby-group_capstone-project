# #require 'json'
# require 'date'
require './classes/item'
require './classes/genre'
require './classes/music_album'
# require './classes/book'
# require './classes/label'
# require './classes/author'
# require './classes/game'
# require './operations/book_operations'
# require './operations/music_operations'
# require './operations/game_operations'
# require './operations/file_operations'
# require './operations/item_operations'

# items = load_items_from_json

items = []

def list_genres(items)
  puts 'List of all genres:'
  genres = items.select { |item| item.is_a?(MusicAlbum) }.map(&:genre)
  genres.each { |genre| puts "Genre ID: #{genre.id}, Name: #{genre.name}" }
end

def list_items(class_name, items)
  items.select { |item| item.is_a?(class_name) }
end

def add_item(item, items)
  items << item
  puts "#{item.class.name} added successfully."
end

def add_music_album(items)
  puts 'Enter Album Title:'
  title = gets.chomp
  puts 'Is it on Spotify? (true/false):'
  on_spotify = gets.chomp == 'true'
  puts 'Enter Genre Name:'
  genre_name = gets.chomp
  genre = Genre.new(items.size + 1, genre_name)
  new_album = MusicAlbum.new(items.size + 1, title, Time.now, on_spotify, genre)

  add_item(new_album, items)
end

puts 'Welcome to the Cataloge of my things'

def print_options
  puts "\nOptions:"
  puts '1. List all books'
  puts '2. List all music albums'
  puts '3. List of games'
  puts '4. List all genres'
  puts '5. List all labels'
  puts '6. List all authors'
  puts '7. Add a book'
  puts '8. Add a music album'
  puts '9. Add a game'
  puts '10. Quit'
end

loop do
  print_options
  print 'Enter your choice: '
  choice = gets.chomp.to_i
  case choice
  when 1
    list_books(items)
  when 2
    puts 'List of all music albums:'
    list_items(MusicAlbum, items).each { |music_album| puts "Album ID: #{music_album.id}, Title: #{music_album.title}" }
  when 3
    list_games(items)
  when 4
    list_genres(items)
  when 5
    list_labels(items)
  when 6
    list_authors(items)
  when 7
    add_book(items)
  when 8
    add_music_album(items)
  when 9
    add_game(items)
  when 10
    # save_items_to_json(items)
    puts 'Exiting the application. Goodbye!'
    break
  else
    puts 'Invalid choice. Please try again.'
  end
end
