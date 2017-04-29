class Artist

  attr_accessor :name
  attr_reader :songs

  @@all = []

  def initialize(name)
    self.name = name
    @songs = []
  end

  def add_song(song)
    self.songs << song
  end

  def save
    self.class.all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    found = self.all.find {|artist| artist.name == name}
    if found
      found
    else
      new_artist = Artist.new(name)
      new_artist.save
      new_artist
    end
  end

  def print_songs
    self.songs.each {|song| puts song.name}
  end





end
