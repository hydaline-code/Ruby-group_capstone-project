
class Item
  attr_accessor :id, :published_date, :archived
  attr_reader :genre, :author

  def initialize(id, genre, author, published_date)
    @id = id
    @genre = genre
    @author = author
    @published_date = published_date
    @archived = false
  end

  def add_genre(genre)
    @genres ||= []
    @genres << genre
  end

  def add_author(author)
    @authors ||= []
    @authors << author
  end

  def can_be_archived?
    current_year = Time.now.year
    published_year = @published_date.year
    current_year - published_year > 10
  end

  def move_to_archive
    if can_be_archived?
      @archived = true
      puts "Item has been archived."
    else
      puts "Item cannot be archived at this time."
    end
  end
end
