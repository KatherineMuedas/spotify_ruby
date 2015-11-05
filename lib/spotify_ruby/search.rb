require 'httparty'
require 'hashie'
module SpotifyRuby
  class Search

    attr_accessor :status, :message, :response

    def initialize(path, options = {})
      search_url = SpotifyRuby::BASE_URL + path
      search(search_url, options)
    end

    def search(search_url, options = {})
      http_response = HTTParty.get(search_url, {query: options.merge(SpotifyRuby::DEFAULT_PARAMS), headers: SpotifyRuby::DEFAULT_HEADERS})
      @status = http_response.code
      @message = http_response.message
      @response = Hashie::Mash.new(http_response.parsed_response)
      # @groups = KatMeetupApi::Group.proccess_batch(response['groups'])

    end

    def find_names
      self.response.items.map{ |x| x.name }
    end

    def success?
      status == 200 ? true : false
    end
  end
end