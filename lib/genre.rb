class Genre
  attr_accessor :name, :song, :artist
  
  @@all = []
  
  def initialize(name)
    @name = name
    @song = song
    @artist = artist
    @@all << self
    self
  end
  
  def self.all
    @@all
  end
  
  def songs
    Song.all.select {|song| song.genre == self}
  end
  
  def artists
    songs.collect {|song| song.artist}
  end
end