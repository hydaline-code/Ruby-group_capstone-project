class Item
  def initialize(id, title, published_date)
@id = id
@title = title
@published_date
@archived = false
  end

  def can_be_archived?
    (Time.now.year - published_date.year) > 10
  end

  def move_to_archive
    self.archived = can_be_archived?
  end
end
