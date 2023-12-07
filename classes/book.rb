require_relative 'item'

class Book < Item
  attr_accessor :cover_state

  def initialize (id, genre, author, published_date, cover_state)
    super(id, genre, author, published_date)
    @cover_state =cover_state
  end

  def can_be_archived?
    super || @cover_state == 'bad'
  end
end
