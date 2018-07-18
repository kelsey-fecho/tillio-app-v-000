# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Plant.create(name: "Achillea", kind: "Perennial", zone: 3, light: "Sun/Part-Sun",
              water: "Medium",
              description: "This yarrow has gray-green foliage and light lemon colored flowers heads that can be quiet large.",
              landscape_categories: "Deer Resistant Plants");

Plant.create(name: "Southern Sugar Maple", kind: "Tree", zone: 5, light: "Filtered Shade",
              water: "Medium",
              description: "Grown for its colorful foliage. Many of the Japanese maples are relatively short lived in the Lower South.",
              landscape_categories: "Plants for Autumn Color");

Plant.create(name: "Basham's Party Pink Crape Myrtle", kind: "Tree", zone: 7,
              light: "Sun/Part-Sun",
              water: "Medium",
              description: "Those with faurie genes, as is this one, have larger leaves and generally have cinnamon brown exfoliating bark.",
              landscape_categories: "Crape Myrtles");

Plant.create(name: "Aristry Rose", kind: "Perennial", zone: 7, light: "Sun",
              water: "Medium",
              description: "The color of this rose is salmon-coral. Reported to have excellent dark green foliage and is a good cut flower.",
              landscape_categories: "Flower Garden");

Plant.create(name: "Marie Daly Rose", kind: "Perennial", zone: 7, light: "Sun",
              water: "Medium",
              description: "This is a relatively new rose that produces clusters of fragrant pale pink flowers and is considered a dwarf landscape rose, thus making it a great choice for mass ground cover plantings. It also is a good choice for container plantings.",
              landscape_categories: "Flower Garden");

Plant.create(name: "Rosemary", kind: "Perennial", zone: 7, light: "Sun",
              water: "Low",
              description: "Rosemary takes on different forms depending on where it is grown. As a stand alone plant it is shrublike, if located in a planter or other raised planting it drapes over the edge.",
              landscape_categories: "Herbs");


Garden.create(name: "Sunny Garden", user_id: 1);

Garden.create(name: "Shady Garden", user_id: 1);
