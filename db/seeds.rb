@prince = Artist.create!(name: 'Prince')
@purple = @prince.songs.create!(name: 'purple rain', length: 845, play_count: 8324)
@buret = @prince.songs.create!(name: 'raspberry', length: 324, play_count: 3455)  
