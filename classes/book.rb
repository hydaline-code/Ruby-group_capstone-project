# require_relative 'item'

class Book < Item
  attr_accessor :cover_state, :publisher, :author

  # rubocop:disable Metrics/ParameterLists
  def initialize(id, title, _author, published_date, cover_state, publisher)
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
    'author' => @author,
    'publish_date' => @publish_date,
    'cover_state' => @cover_state
  }.to_json
end

def self.from_json(json)
  data = JSON.parse(json)
  new(data['id'], data['title'], data['author'], data['publish_date'], data['cover_state'])
end

end

# require_relative 'item'

# class Book < Item
#   attr_accessor :publisher, :cover_state

#   def initialize(publish_date, publisher, cover_state)
#     super(id)
#     @id = id.nil? ? Random.rand(100..10_000) : id
#     @publish_date = publish_date
#     @publisher = publisher
#     @cover_state = cover_state
#   end

#   def can_be_archived?
#     if super
#       true
#     else
#       @cover_state == 'bad'
#     end
#   end

#   def to_s
#     "Id: #{@id}, Published: #{@publish_date}, Publisher: #{@publisher}, Cover State: #{@cover_state}"
#   end

#   def to_json(*args)
#     {
#       JSON.create_id => self.class.name,
#       'id' => @id,
#       'publisher' => @publisher,
#       'publish_date' => @publish_date,
#       'cover_state' => @cover_state
#     }.to_json(*args)
#   end
# end
