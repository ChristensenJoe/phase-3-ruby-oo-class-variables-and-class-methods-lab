require "pry"

class Song

    @@artists = []
    @@genres = []
    @@count = 0

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def self.count
        @@count
    end

    def self.artist_count
        @@artists.group_by(&:itself).transform_values(&:count)
    end

    def self.genre_count
        @@genres.group_by(&:itself).transform_values(&:count)
    end

    attr_accessor :artist, :genre, :name

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@artists << artist
        @@genres << genre
        @@count += 1
    end
end