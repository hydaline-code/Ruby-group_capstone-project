
def list_labels(items)
  puts "\nList of all Labels:"
  labels = items.select { |item| item.is_a?(Label) }
  labels.each { |label| puts "ID: #{label.id}, Title: #{label.title}, Color: #{label.color}" }
end


