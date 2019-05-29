require("pry")
require_relative("../models/album")
require_relative("../models/artist")



artist1 = Artist.new({"name" => "queen"})
artist1.save

album1 = Album.new({"title" => "a night at the opera", "genre" => "rock", "artist_id" => "1"})
album1.save


binding.pry
nil
