# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# c1 = Category.create(name: "Bird")
# c2 = Category.create(name: "Freshwater Creature")
# c3 = Category.create(name: "Fungus")
# c4 = Category.create(name: "Insect")
# c5 = Category.create(name: "Mammal")
# c6 = Category.create(name: "Plant")
# c7 = Category.create(name: "Reptile")
# c8 = Category.create(name: "Salt Water Creature")
# c9 = Category.create(name: "Other")

# l1 = Location.create(city: "Rice", region: "MN", country: "USA")
# l2 = Location.create(city: "Tepoztlan", region: "Morelos", country: "MX")
# l3 = Location.create(city: "Puerto Ayora", region: "Galapagos Islands", country: "Ecuador")

# u1 = User.create(name: "Meks M", username: "Meks", password: "1234")
# u2 = User.create(name: "Max M", username: "MadMax", password: "1234")

# u1.sightings.create(
#   image: "https://avibirds.com/wp-content/uploads/2020/08/great-blue-heron-400x442.jpg",
#   category_id: 1,
#   identified: true,
#   common_name: "Great Blue Heron",
#   scientific_name: "Ardea herodias",
#   public: true,
#   date: "2020-06-15",
#   time: "09:15",
#   notes: "Watched the heron fish, it caught a frog for breakfast.",
#   location_id: 1
# )

User.first.sightings.create(
  image: "https://i.pinimg.com/originals/74/59/a9/7459a91fd5931e136c8a6a79e76de36e.jpg",
  category_id: 5,
  identified: true,
  common_name: "White Tailed Deer",
  scientific_name: "Odocoileus virginianus",
  public: true,
  date: "2020-08-30",
  time: "17:30",
  notes: "A mother and two young fauns went for a stroll on the peninsula today.",
  location_id: 1
)

User.first.sightings.create(
  image: "https://i.pinimg.com/originals/6e/3f/a6/6e3fa6fd114e418f0109d3a2071f71d6.jpg",
  category_id: 5,
  identified: true,
  common_name: "Tlacuache",
  scientific_name: "Didelphimorphia",
  public: true,
  date: "2019-01-02",
  time: "07:30",
  notes: "Seen on top of Tepozteco, they were quite agressive in wanting food.",
  location_id: 2
)

User.last.sightings.create(
  image: "https://i.pinimg.com/originals/6e/3f/a6/6e3fa6fd114e418f0109d3a2071f71d6.jpg",
  category_id: 7,
  identified: true,
  common_name: "Marine Iguana",
  scientific_name: "Amblyrhynchus cristatus",
  public: false,
  date: "2014-01-15",
  time: "14:30",
  notes: "Seen basking on the rocks.",
  location_id: 3
)
