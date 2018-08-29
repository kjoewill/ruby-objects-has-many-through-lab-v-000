class Artist 
  
  @@all = []
  
  attr_accessor :name
  
  def self.all
    @@all
  end
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def new_song(name, genre)
    song = Song.new(name, self, genre)
  end
  
  def songs 
    Songs.all.select { |e| each.artist == self }
  end
  
  def genres 
    self.songs.collect { |e| e.genre }
  end
  
end