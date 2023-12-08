require './classes/music_album'
require 'date'
require 'rspec'

describe MusicAlbum do
  let(:id) { 1 }
  let(:title) { 'Album Title' }
  let(:publish_date) { Date.today }
  let(:on_spotify) { true }
  let(:genre) { 'Rock' }

  subject(:music_album) { described_class.new(id, title, publish_date, on_spotify, genre) }

  describe '#initialize' do
    it 'sets the id, title, publish_date, on_spotify, and genre' do
      expect(music_album.id).to eq(id)
      expect(music_album.title).to eq(title)
      expect(music_album.publish_date).to eq(publish_date)
      expect(music_album.on_spotify).to eq(on_spotify)
      expect(music_album.genre).to eq(genre)
    end
  end

  describe '#can_be_archived?' do
    context 'when the music album can be archived' do
      it 'returns true' do
        allow(music_album).to receive(:on_spotify).and_return(false)
        expect(music_album.can_be_archived?).to eq(true)
      end
    end

    context 'when the music album cannot be archived' do
      it 'returns false' do
        allow(music_album).to receive(:on_spotify).and_return(true)
        expect(music_album.can_be_archived?).to eq(false)
      end
    end
  end
end
