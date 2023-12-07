

require_relative 'item'

class Label < Item
  attr_reader :title, :color, :items

  def initialize(id, title, color)
    super(id, title, nil) 
    @id ||= Random.rand(100..1000)
    @title = title
    @color = color
    @items = []
  end

  def add_item(item)
    @item << item
    item.label = self
  end

end