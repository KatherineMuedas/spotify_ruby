module SpotifyRuby
  class Artist

    def self.search(q, options = {})
      SpotifyRuby::Search.new("/v1/search?type=artist&q=#{q}", options)
    end

    def self.find(id, options = {})
      SpotifyRuby::Search.new("/v1/artists/#{id}", options)
    end

    def self.search_albums(id, options={})
      SpotifyRuby::Search.new("/v1/artists/#{id}/albums", options)
    end

    def self.search_top_tracks_by_artist(id, country, options={})
      SpotifyRuby::Search.new("/v1/artists/#{id}/top-tracks?country=#{country}", options)
    end
  end
end