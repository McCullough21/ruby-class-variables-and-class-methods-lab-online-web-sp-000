require 'pry'
class Song
 @@count = 0
 @@artists = []
 @@genres = []


 attr_reader :name, :genre, :artist

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count +=1
    @@artists << artist
    @@genres << genre
  end

def artists=(array)
  @artists = @@arists.uniq
end

# binding.pry
  def self.count
    @@count
  end

  def self.genres
    @@genres
  end


end
