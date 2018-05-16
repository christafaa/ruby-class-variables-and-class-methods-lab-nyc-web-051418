class Song
  attr_reader :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << @artist
    @@genres << @genre
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.artist_count
    result = {}
    @@artists.each {|artist| result.has_key?(artist) ? result[artist] += 1 : result[artist] = 1}
    result
  end

  def self.genre_count
    result = {}
    @@genres.each {|genre| result.has_key?(genre) ? result[genre] += 1 : result[genre] = 1}
    result
  end

end
