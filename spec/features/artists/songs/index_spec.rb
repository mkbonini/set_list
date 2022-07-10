require 'rails_helper'

RSpec.describe 'Artists song index' do
    before(:each) do
        @prince = Artist.create!(name: 'Prince')
        @purple = @prince.songs.create!(name: 'purple rain', length: 845, play_count: 8324)
        @buret = @prince.songs.create!(name: 'raspberry', length: 324, play_count: 3455)  
        
    end
    it 'shows all of the songs for the artist' do

        visit "/artists/#{@prince.id}/songs"

        expect(page).to have_content(@purple.name)
        expect(page).to have_content(@buret.name)
    end

    it 'links to each songs show page' do
        visit "/artists/#{@prince.id}/songs"

        click_on @purple.name

        expect(current_path).to eq("/songs/#{@purple.id}")
    end

    it 'shows the average song length for the artist' do
        visit "/artists/#{@prince.id}/songs"

        expect(page).to have_content("Average Song Length: 584.5")
    end
end