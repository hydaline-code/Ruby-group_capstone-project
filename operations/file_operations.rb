
require 'json'

def load_data(filename, data_type, container)
  file_path = 'data/items.json'
  json_data = File.read(file_path)
  items_data = JSON.parse(json_data)

  deserialized_data = items_data.map do |item_data|
    case item_data['type']
    when 'Book'
      Book.from_json(item_data.to_json)
      
    else
      raise "Unknown item type: #{item_data['type']}"
    end
  end
  deserialized_data
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