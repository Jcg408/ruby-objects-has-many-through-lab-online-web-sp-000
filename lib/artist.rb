
class Artist
  attr_accessor :name, :song
  @@allArtist = []
   def initialize(name)
    @name = name
    @song = song
    @@allArtist << self
  end

  def self.all
    @@allArtist
  end

 def new_song(name, genre)
   Song.new(name, self, genre)
  
 end

 def songs
    self.song.collect do |each|
      each.artist == self
    end
  end
   def genres
    Song.all.select do |each|
        each.genre
    end
  end
end 