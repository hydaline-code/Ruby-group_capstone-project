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

  def to_json(*_args)
    {
      'type' => 'Label',
      'id' => @id,
      'title' => @title,
      'color' => @color
    }.to_json
  end

  def self.from_json(json)
    data = JSON.parse(json)
    new(data['id'], data['title'], data['color'])
  end
end
