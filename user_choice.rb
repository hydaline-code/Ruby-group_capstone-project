class Choices
  def self.options(choice)
    case choice
    when 1
      puts 'List of Books:'
    when 2
      puts 'List all music albums:'
    when 3
      puts 'List all games:'
    when 4
      puts ' List all genres:'
    when 5
      puts 'List all labels:'
    when 6
      puts 'List all authors:'
    when 7
      puts 'Add a book:'
    when 8
      puts 'Add a music album:'
    when 9
      puts 'Add a game:'
    when 10
      puts 'Quitting the app. Goodbye!'
      exit
    else
      puts 'Invalid choice. Please choose a valid option.'
    end
  end
end
