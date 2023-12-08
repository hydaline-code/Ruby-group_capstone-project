
require 'json'

# # operations/file_operations.rb
# def load_data(filename, data_type, container)
#   return unless File.exist?(filename)

#   file_content = File.read(filename)
#   json_data = JSON.parse(file_content)

#   deserialized_data = json_data.map { |json_object| load_item(json_object, data_type) }
#   container.concat(deserialized_data.compact)
# rescue StandardError => e
#   puts "Error loading data from #{filename}: #{e.message}"
# end

# def load_item(json_object, data_type)
#   case data_type.to_s
#   when 'Book'
#     Book.from_json(json_object)
#   when 'Label'
#     Label.from_json(json_object)
#   end
# end

# def load_data(filename, data_type, container)
#   return unless File.exist?(filename)

#   file_content = File.read(filename)
#   json_data = JSON.parse(file_content)

#   deserialized_data = json_data.map { |json_object| load_item(json_object) }
#   container.concat(deserialized_data.compact)
# rescue StandardError => e
#   puts "Error loading data from #{filename}: #{e.message}"
# end

# def load_item(json_object)
#   case json_object['type']
#   when 'Book'
#     load_book(json_object)
  
#   end
# end

# def load_book(json_object)
#   Book.new(
#     json_object['id'],
#     json_object['title'],
#     json_object['author'],
#     json_object['publish_date'],
#     json_object['cover_state'],
#     json_object['publisher']
#   )
# end

def load_data(filename, data_type, container)
  return [] unless File.exist?(filename)  # Change this line

  file_content = File.read(filename)
  json_data = JSON.parse(file_content)

  deserialized_data = json_data.map { |json_object| load_item(json_object) }
  container.concat(deserialized_data.compact)
rescue StandardError => e
  puts "Error loading data from #{filename}: #{e.message}"
  []
end
def save_items_to_json(filename, data)
  save_to_json(filename, data)
end

def save_to_json(filename, data)
  File.open(filename, 'w') do |file|
    file.puts JSON.generate(data)
  end
  puts "Data saved to #{filename}"
end