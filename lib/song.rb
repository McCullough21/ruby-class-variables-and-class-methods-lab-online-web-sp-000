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
    @artists = [@@artists.uniq]
  end

# def self.artists
#   @artists
# end
# binding.pry
  def self.count
    @@count
  end

  def self.genres
    @@genres
  end


end
