require 'rspec'
require './classes/genre'
require './classes/item'

describe Genre do
  let(:id) { 1 }
  let(:name) { 'Rock' }
  let(:genre) { described_class.new(id, name) }
  let(:item) { Item.new(1, 'Album Title', Date.today) }

  describe '#initialize' do
    it 'sets the id, name, and initializes the items array' do
      expect(genre.id).to eq(id)
      expect(genre.name).to eq(name)
      expect(genre.items).to be_empty
    end
  end

  describe '#add_item' do
    it 'adds an item to the items array' do
      genre.add_item(item)
      expect(genre.items).to contain_exactly(item)
    end
  end
end
