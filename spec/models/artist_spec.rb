require 'rails_helper'

RSpec.describe Artist do
    before(:each) do
        @prince = Artist.create!(name: 'Prince')
        @purple = @prince.songs.create!(name: 'purple rain', length: 845, play_count: 8324)
        @buret = @prince.songs.create!(name: 'raspberry', length: 324, play_count: 3455)  
        
    end
    it {should have_many :songs}

    describe 'instance methods' do
        it 'returns the average song length' do
            expect(@prince.average_song_length).to eq(584.5)
        end
    end


end