# item.rb
class Item
  attr_accessor :id, :genre, :author, :label, :published_date
  attr_reader :archived

  def initialize(id, author, _genre, label, published_date)
    @id = id
    @author = author
    @label = label
    @published_date = published_date
    @archived = false
  end

  def can_be_archived?
    current_year = Time.now.year
    published_year = @published_date.year
    current_year - published_year > 10
  end

  def move_to_archive
    @archived = can_be_archived?
  end
end
