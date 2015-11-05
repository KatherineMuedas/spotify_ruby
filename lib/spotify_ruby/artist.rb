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


  end
end

# SpotifyRuby::Artist.search('Lady', hkjjk: jkhkjhkj)