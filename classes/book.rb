require_relative 'item'

class Book < Item
  attr_accessor :cover_state, :publisher, :author

  # rubocop:disable Metrics/ParameterLists
  def initialize(id, title,  published_date, cover_state, publisher)
    super(id, title, published_date)
    @cover_state = cover_state
    @publisher = publisher
    @id ||= Random.rand(100..1000)
  end

  def can_be_archived?
    super || @cover_state == 'bad'
  end

# rubocop:enable Metrics/ParameterLists

def to_json(*_args)
  {
    'type' => 'Book',
    'id' => @id,
    'title' => @title,
    'publish_date' => @publish_date,
    'cover_state' => @cover_state,
    'publisher' => @publisher
  }.to_json
end

def self.from_json(json)
  data = JSON.parse(json)
  new(data['id'], data['title'], data['publish_date'], data['cover_state'], data['publisher'])
end

end
