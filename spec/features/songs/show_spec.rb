require 'rails_helper'

RSpec.describe 'the songs show page' do
    it 'displays the song title' do
        artist = Artist.create(name: 'Michael Jackson')
        song = artist.songs.create(name: "I really like you", length: 203, play_count: 1232)
        song_2 = artist.songs.create(name: "different", length: 203, play_count: 1232)
        
        visit "/songs/#{song.id}"

        expect(page).to have_content(song.name)
        expect(page).to_not have_content(song_2.name)
    end

    it 'displays the name of artist of the song' do
        artist = Artist.create(name: 'Michael Jackson')
        song = artist.songs.create(name: "I really like you", length: 203, play_count: 1232)
        song_2 = artist.songs.create(name: "different", length: 203, play_count: 1232)
        
        visit "/songs/#{song.id}"

        expect(page).to have_content(artist.name)
    end
end