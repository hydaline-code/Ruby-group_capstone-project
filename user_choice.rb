

def make_choice(choice, item)
  case choice
  when 1
    display_item_info(item)

  when 2
    add_genre(item)

  when 3
    add_author(item)

  when 4
    move_to_archive(item)

  when 5
    puts "Quitting the app. Seeyou Next time!"
    exit

  else
    puts "Invalid choice. Please choose a valid option."
  end
end

def display_item_info(item)
  puts "Item Information:"
  puts "ID: #{item.id}"
  puts "Genre: #{item.genre}"
  puts "Author: #{item.author}"
  puts "Published Date: #{item.published_date}"
  puts "Archived: #{item.archived ? 'Yes' : 'No'}"
end

def add_genre(item)
  puts "Enter genre:"
  new_genre = gets.chomp
  item.add_genre(new_genre)
  puts "Genre added successfully."
end

def add_author(item)
  puts "Enter author:"
  new_author = gets.chomp
  item.add_author(new_author)
  puts "Author added successfully."
end

def move_to_archive(item)
  item.move_to_archive
end
