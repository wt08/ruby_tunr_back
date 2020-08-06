# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



# ** if you have time add a destroy_all here with a promise **

Song.create([
    { title: 'Stand Tall', artist: 'Dirty Heads', time: 191},
    { title: 'Kick Down', artist: 'Long Beach Dub Allstars', time: 284},
    { title: 'Takin My Time', artist: 'Aer', time: 181},
    { title: 'Smell These Roses', artist: 'The Holdup', time: 243},
    { title: "All Your'n", artist: 'Tyler Childers', time: 218},
    { title: "Ends", artist: 'Everlast', time: 264},
  ])

  Playlist.create([
    { name: "Reggae" },
  ])

  Playlist.create([
    { name: "Mix" },
  ])

  Relate.create([
      {playlist_id: 2, song_id: 6},
    ])

  puts "Seeded database"