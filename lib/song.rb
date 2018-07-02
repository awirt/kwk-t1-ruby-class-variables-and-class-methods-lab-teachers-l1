require 'pry'

class Song
  
  @@count = 0
  @@genres = []
  @@artists = []
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    
    @@count += 1
    @@genres << @genre
    @@artists << @artist
  end
  
  attr_accessor :name, :artist, :genre
  
  def self.count
    @@count
  end
  
  def self.genres
    @@genres.uniq
  end
  
  def self.genre_count
    genre_count = {}
    @@genres.each do |i|
      if genres[i]
        genres[i] += 1
      else
        genres[i] = 1
      end
    end
  end
  
  def self.artists
    @@artists.uniq
  end
  
  def self.artist_count
  end
  
end