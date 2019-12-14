require_relative('../models/album')
require_relative('../models/artist')
require_relative('../models/label')

require('pry')

Album.delete_all()
Label.delete_all()
Artist.delete_all()

label1 = Label.new({"name" => "Roadrunner Records"})
label1.save()

label2 = Label.new({"name" => "Lava Records"})
label2.save()

label3 = Label.new({"name" => "Cooking Vinyl"})
label3.save()

label4 = Label.new("name" => "XL Recordings")
label4.save()

label5 = Label.new("name" => "Liberato")
label5.save()

artist1 = Artist.new({"name" => "Porcupine Tree"})
artist1.save()

artist2 = Artist.new({"name" => "Trans-Siberian Orchestra"})
artist2.save()

artist3 = Artist.new({"name" => "Opeth"})
artist3.save()

artist4 = Artist.new({"name" => "The Prodigy"})
artist4.save()

artist5 = Artist.new({"name" => "Radiohead"})
artist5.save()

artist6 = Artist.new({"name" => "LIBERATO"})
artist6.save()

album1 = Album.new(
  {"title" => "Fear Of A Blank Planet",
   "genre" => "Progressive Rock",
   "stock_quantity" => 10,
   "buying_cost" => 7.50,
   "selling_price" => 11.00,
   "artist_id" => artist1.id,
   "label_id" => label1.id
  }
)

album2 = Album.new(
  {"title" => "The Incident",
   "genre" => "Progressive Rock",
   "stock_quantity" => 8,
   "buying_cost" => 8.00,
   "selling_price" => 11.50,
   "artist_id" => artist1.id,
   "label_id" => label1.id
  }
)

album3 = Album.new(
  {"title" => "In Absentia",
   "genre" => "Progressive Rock",
   "stock_quantity" => 15,
   "buying_cost" => 7.00,
   "selling_price" => 10.50,
   "artist_id" => artist1.id,
   "label_id" => label2.id
  }
)

album4 = Album.new(
  {"title" => "Night Castle",
   "genre" => "Symphonic Metal",
   "stock_quantity" => 5,
   "buying_cost" => 6.00,
   "selling_price" => 9.50,
   "artist_id" => artist2.id,
   "label_id" => label2.id
  }
)

album5 = Album.new(
  {"title" => "Ghost Reveries",
   "genre" => "Progressive Death Metal",
   "stock_quantity" => 9,
   "buying_cost" => 7.00,
   "selling_price" => 10.50,
   "artist_id" => artist3.id,
   "label_id" => label1.id
  }
)

album6 = Album.new(
  {"title" => "Deadwing",
   "genre" => "Progressive Metal",
   "stock_quantity" => 9,
   "buying_cost" => 7.00,
   "selling_price" => 10.50,
   "artist_id" => artist1.id,
   "label_id" => label1.id
  }
)

album7 = Album.new(
  {"title" => "Invaders Must Die",
   "genre" => "Electronica",
   "stock_quantity" => 15,
   "buying_cost" => 8.00,
   "selling_price" => 11.50,
   "artist_id" => artist4.id,
   "label_id" => label3.id
  }
)

album8 = Album.new(
  {"title" => "The Fat Of The Land",
   "genre" => "Electronica",
   "stock_quantity" => 13,
   "buying_cost" => 7.50,
   "selling_price" => 11.00,
   "artist_id" => artist4.id,
   "label_id" => label4.id
  }
)

album9 = Album.new(
  {"title" => "In Rainbows",
   "genre" => "Alternative Rock",
   "stock_quantity" => 20,
   "buying_cost" => 8.50,
   "selling_price" => 12.00,
   "artist_id" => artist5.id,
   "label_id" => label4.id
  }
)

album10 = Album.new(
  {"title" => "LIBERATO",
   "genre" => "Trap, Indie",
   "stock_quantity" => 30,
   "buying_cost" => 9.50,
   "selling_price" => 13.00,
   "artist_id" => artist6.id,
   "label_id" => label5.id
  }
)


album1.save()
album2.save()
album3.save()
album4.save()
album5.save()
album6.save()
album7.save()
album8.save()
album9.save()
album10.save()

binding.pry
nil
