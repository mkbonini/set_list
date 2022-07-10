require 'rails_helper'

RSpec.describe 'the artists creation' do
    it 'link to the new page from artist index' do
        visit '/artists'

        click_on('New Artist')
        expect(current_path).to eq ('/artists/new')
    end

    it 'can create a new artist' do
        visit '/artists/new'

        fill_in('Name', with: 'Prince')
        click_on('Create Artist')
        
        new_artist_id = Artist.last.id
        expect(current_path).to eq ("/artists/#{new_artist_id}") 
        expect(page).to have_content("Prince")       
    end
end