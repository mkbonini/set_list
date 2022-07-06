require 'rails_helper'

RSpec.describe 'Artists song index' do
    it 'shows all of the songs for the artist' do
        prince = Artist.create!(name: 'Prince')
        purple = prince.songs.create!(name: 'purple rain', length: 845, play_count: 8324)
        buret = prince.songs.create!(name: 'raspberry', length: 324, play_count: 3455)  
        
        visit "/artists/#{prince.id}/songs"

        expect(page).to have_content(purple.name)
        expect(page).to have_content(buret.name)
    end

    it 'links to each songs show page'
end