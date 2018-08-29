class Genre 
  
  @@all = []
  
  def self.all
    @@all
  end
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def new_song(name, artist)
    song = Song.new(name, artist, self)
  end
  
  def songs 
    Song.all.select { |s| s.genere == self.name}
  end
  
  def artists
    self.songs.collect { |s| s.artist }
  end
  
end