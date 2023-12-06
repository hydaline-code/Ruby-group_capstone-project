require_relative 'display_options'
require_relative 'user_choice'

loop do
  display_options
  choice = gets.chomp.to_i
  Choices.options(choice)
end
