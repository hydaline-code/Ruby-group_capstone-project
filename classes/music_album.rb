require_relative 'item'

class MusicAlbum < Item
  attr_reader :on_spotify, :genre

  def initialize(id, title, publish_date, on_spotify, genre)
    super(id, title, publish_date)
    @on_spotify = on_spotify
    @genre = genre
  end

  def can_be_archived?
    !on_spotify
  end
end
