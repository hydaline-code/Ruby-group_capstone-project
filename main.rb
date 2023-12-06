# main.rb

require_relative 'item'
require_relative 'display_choice'
require_relative 'user_choice'

item = Item.new(1, "Fiction", "John Doe", Time.new(2010, 1, 1))

loop do
  display_options
  choice = gets.chomp.to_i
  make_choice(choice, item)
end
