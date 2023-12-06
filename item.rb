# item.rb
class Item
  attr_accessor :id, :title, :description, :published_date, :archived

  def initialize(id, title, description, published_date)
    @id = id
    @title = title
    @description = description
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
