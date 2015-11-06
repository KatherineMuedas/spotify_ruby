require 'spec_helper'
describe SpotifyRuby::Artist do
  it 'should search by artist' do
    search = SpotifyRuby::Artist.search("lady")
    expect(search) 
    expect(search.status).to eq(200)
  end

  it 'should find an artist' do
    search = SpotifyRuby::Artist.find("0OdUWJ0sBjDrqHygGUXeCF")
    expect(search) 
    expect(search.status).to eq(200)
  end

  it 'should search by albums of artist' do
    search = SpotifyRuby::Artist.search_albums("0OdUWJ0sBjDrqHygGUXeCF")
    expect(search) 
    expect(search.status).to eq(200)
  end

  it 'should search by top tracks of artist' do
    search = SpotifyRuby::Artist.search_top_tracks_by_artist("0OdUWJ0sBjDrqHygGUXeCF", "us")
    expect(search) 
    expect(search.status).to eq(200)
  end

 
end
