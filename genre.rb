require './item'

class Genre < Item
  attr_accessor :name, :items

  def initialize(id, genre, author, published_date, name)
    super(id, genre, author, published_date)
    @name = name
    @items = []
  end

  def add_item(item)
    item.add_genre = self
    items << item
  end
end
