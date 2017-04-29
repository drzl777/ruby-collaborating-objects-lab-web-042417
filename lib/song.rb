class Song
  attr_accessor :name, :artist
  def initialize(name)
    self.name = name
  end


  def self.new_by_filename(filename)

    song_info = filename.split('.').first

    artist, name, genre = song_info.split(' - ')
    song = self.new(name)
    song.artist = Artist.find_or_create_by_name(artist)
    song.artist.add_song(song)
    song
  end

end
