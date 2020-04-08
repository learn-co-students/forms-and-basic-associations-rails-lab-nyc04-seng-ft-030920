# ID3 tag music genres are surprisingly specific.

Artist.destroy_all
Song.destroy_all
Note.destroy_all

genres = Hash[[
  "Blues",
  "Classic Rock",
  "Country",
  "Dance",
  "Disco",
  "Funk",
  "Grunge",
  "Hip-Hop",
  "Jazz",
  "Metal",
  "New Age",
  "Oldies",
  "Other",
  "Pop",
  "R&B",
  "Rap",
  "Reggae",
  "Rock",
  "Techno",
  "Industrial",
  "Alternative",
  "Ska",
  "Death Metal",
  "Pranks",
  "Soundtrack",
  "Euro-Techno",
  "Ambient",
  "Trip-Hop",
  "Vocal",
  "Jazz+Funk",
  "Fusion",
  "Trance",
  "Classical",
  "Instrumental",
  "Acid",
  "House",
  "Game",
  "Sound Clip",
  "Gospel",
  "Noise",
  "Alternative Rock",
  "Bass",
  "Soul",
  "Punk",
  "Space",
  "Meditative",
  "Instrumental Pop",
  "Instrumental Rock",
  "Ethnic",
  "Gothic",
  "Darkwave",
  "Techno-Industrial",
  "Electronic",
  "Pop-Folk",
  "Eurodance",
  "Dream",
  "Southern Rock",
  "Comedy",
  "Cult",
  "Gangsta",
  "Top 40",
  "Christian Rap",
  "Pop/Funk",
  "Jungle",
  "Native US",
  "Cabaret",
  "New Wave",
  "Psychadelic",
  "Rave",
  "Showtunes",
  "Trailer",
  "Lo-Fi",
  "Tribal",
  "Acid Punk",
  "Acid Jazz",
  "Polka",
  "Retro",
  "Musical",
  "Rock & Roll",
  "Hard Rock",
  "Folk",
  "Folk-Rock",
  "National Folk",
  "Swing",
  "Fast Fusion",
  "Bebob",
  "Latin",
  "Revival",
  "Celtic",
  "Bluegrass",
  "Avantgarde",
  "Gothic Rock",
  "Progressive Rock",
  "Psychedelic Rock",
  "Symphonic Rock",
  "Slow Rock",
  "Big Band",
  "Chorus",
  "Easy Listening",
  "Acoustic",
  "Humour",
  "Speech",
  "Chanson",
  "Opera",
  "Chamber Music",
  "Sonata",
  "Symphony",
  "Booty Bass",
  "Primus",
  "Porn Groove",
  "Satire",
  "Slow Jam",
  "Club",
  "Tango",
  "Samba",
  "Folklore",
  "Ballad",
  "Power Ballad",
  "Rhythmic Soul",
  "Freestyle",
  "Duet",
  "Punk Rock",
  "Drum Solo",
  "Acapella",
  "Euro-House",
  "Dance Hall",
  "Goa",
  "Drum & Bass",
  "Club - House",
  "Hardcore",
  "Terror",
  "Indie",
  "BritPop",
  "Negerpunk",
  "Polsk Punk",
  "Beat",
  "Christian Gangsta Rap",
  "Heavy Metal",
  "Black Metal",
  "Crossover",
  "Contemporary Christian",
  "Christian Rock",
  "Merengue",
  "Salsa",
  "Thrash Metal",
  "Anime",
  "JPop",
  "Synthpop"
].map { |genre| [genre, Genre.find_or_create_by(name: genre)] }]

fka_twigs = Artist.create(name: "FKA Twigs")
blood_orange = Artist.create(name: "Blood Orange")
daft_punk = Artist.create(name: 'Daft Punk')

water_me = fka_twigs.songs.create(title: "Water Me")
cellophane = fka_twigs.songs.create(title: "cellophane")

charcoal_baby = blood_orange.songs.create(title: "Charcoal Baby")
hope = blood_orange.songs.create(title: "Hope")

opera = Genre.find_by(name: "Opera")
water_me.genre_id = opera.id
water_me.save

pop = Genre.find_by(name: "Pop")
cellophane.genre_id = pop.id
cellophane.save

hip_hop = Genre.find_by(name: "Hip-Hop")
charcoal_baby.genre_id = hip_hop.id
charcoal_baby.save

rb = Genre.find_by(name: "R&B")
hope.genre_id = rb.id
hope.save

water_me.notes.create(content: "This song makes me cry.")
cellophane.notes.create(content: "This song is also really sad.")
charcoal_baby.notes.create(content: "This is my favorite Blood Orang song.")