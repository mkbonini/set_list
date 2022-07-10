require 'rails_helper'

RSpec.describe 'the artists edit ' do
    it 'link to the edit page from artist index' do
        artist = Artist.create!(name: 'modest mouse')
        visit '/artists'
        click_on("Edit #{artist.name}")
        expect(current_path).to eq ("/artists/#{artist.id}/edit")
    end

    it 'can edit the artist' do
        artist = Artist.create!(name: 'modest mous')
        visit "/artists"
        expect(page).to have_content("modest mous")
        click_on("Edit modest mous")
        fill_in 'name', with: "modest mouse"
        click_on("Update Artist")
        expect(current_path).to eq ("/artists")
        expect(page).to have_content('modest mouse')
    end
end