require 'rails_helper'

RSpec.describe 'the artists destroy' do
    # it 'link to the edit page from artist index' do
    #     artist = Artist.create!(name: 'modest mouse')
    #     visit '/artists'
    #     click_on("Edit #{artist.name}")
    #     expect(current_path).to eq ("/artists/#{artist.id}/edit")
    # end

    it 'can delete the artist' do
        artist = Artist.create!(name: 'modest mouse')
        visit "/artists"
        expect(page).to have_content('modest mouse')
        click_on("Delete")

        expect(current_path).to eq ("/artists")
        expect(page).to_not have_content('modest mouse')
    end
end