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

  def to_json(*_args)
    {
      'class_name' => 'MusicAlbum',
      'id' => id,
      'title' => title,
      'publish_date' => publish_date,
      'on_spotify' => on_spotify
    }
  end

  def self.from_json(data)
    MusicAlbum.new(data['id'], data['title'], data['publish_date'], data['on_spotify'], data['genre'])
  end
end
