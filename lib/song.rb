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

# def artists
#   @@artists.uniq
# end
def self.artists
  @@artists.uniq
end
# binding.pry
  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
   @genre_count = {}
    @@genres.collect do |genre|
      @genre_count[genre] = genre.count
    end
  end




end
