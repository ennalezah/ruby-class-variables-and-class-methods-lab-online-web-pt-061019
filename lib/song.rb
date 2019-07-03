class Song 
  attr_reader :name, :artist, :genre
  
  @@count = 0
  @@artists = []
  @@genres = []
  
  @@genre_count = {}
  @@artist_count = {}
  
  
  def initialize(name, artist, genre)
    @name = name 
    @artist = artist 
    @genre = genre
    
    @@count +=1
    @@artists << @artist
    @@genres << @genre
  end
  
  def self.count 
    @@count
  end
  
  def self.artists
    @@artists.uniq!
  end
  
  def self.genres
    @@genres.uniq!
  end
  
  def self.genre_count
    @@genres.each do |genre|
      @@genre_count[genre] += 1 
      @@genre_count[genre] ||= 1
      
    end
    @@genre_count
  end
  
  def self.artist_count
    @@artists.each do |artist|
      if @@artist_count.has_key?(artist)
        @@artist_count[artist] +=1
      else
        @@artist_count[artist] = 1
      end
    end
    @@artist_count
  end
end