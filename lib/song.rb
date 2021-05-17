class Song
  attr_accessor :name, :artist
  @@all = [ ]

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.new_by_filename
    song = self.new(song)
    artist, song = filename.split(" - ")[1]
    song.artist_name = artist
    song
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end
end 
