require_relative 'item'

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
end
# rubocop:enable Metrics/ParameterLists
