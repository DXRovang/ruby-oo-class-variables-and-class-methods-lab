require "pry"

class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@genres << genre
    @@artists << artist

    @@count += 1
  end

  def count
    @@count
  end

  def genres
    @@genres
  end

  def artists
    @@artists
  end

  def self.count
    @@count
  end

  def self.artists
    @small_art = @@artists.uniq
    @small_art
  end

  def self.genres
    @small_genre = @@genres.uniq
    @small_genre
  end

  def self.genre_count
    genre_hash = {}
    counter = 0

    @@genres.each do |genre|
      if genre_hash.include? genre
        genre_hash[genre]+=1
      else
        genre_hash[genre] = counter + 1
      end
    end
    genre_hash
  end



  def self.artist_count
    artist_hash = {}
    counter = 0

    #iterate over the condensed artist list (@small_art)
    @@artists.each do |art|
      #if artist is there, increase the value of artist_hash
      if artist_hash.include? art
        artist_hash[art]+=1
      else
        #if artist is not there, add them to artist_hash and increase the value 
        artist_hash[art] = counter + 1
      end
    end
    #return artist_hash
    artist_hash
  end

end