# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Plant.create(name: "Achillea", kind: "Perennial", zone: 3, height: "1-2 feet",
              bloom_time: "Spring, Summer", flower_color: "Yellow", light: "Sun/Part-Sun",
              drainage: "Well Drained", growth_rate: "Fast", water: "Medium", maintenance: "Low",
              description: "This yarrow has gray-green foliage and light lemon colored flowers heads that can be quiet large.",
              landscape_categories: "Deer Resistant Plants");

Plant.create(name: "Southern Sugar Maple", kind: "Tree", zone: 5, height: "8-10 feet",
              bloom_time: "Spring", flower_color: "Purple", light: "Filtered Shade",
              drainage: "Well Drained", growth_rate: "Slow", water: "Medium", maintenance: "Low",
              description: "Grown for its colorful foliage. Many of the Japanese maples are relatively short lived in the Lower South.",
              landscape_categories: "Plants for Autumn Color");

Plant.create(name: "Basham's Party Pink Crape Myrtle", kind: "Tree", zone: 7, height: "20-30 feet",
              bloom_time: "Summer", flower_color: "Lavender", light: "Sun/Part-Sun",
              drainage: "Well Drained", growth_rate: "Moderate", water: "Medium",
              description: "Those with faurie genes, as is this one, have larger leaves and generally have cinnamon brown exfoliating bark.",
              landscape_categories: "Crape Myrtles");

Plant.create(name: "Aristry Rose", kind: "Perennial", zone: 7, height: "2-5 feet",
              bloom_time: "Spring, Summer, Fall", flower_color: "Red", light: "Sun",
              drainage: "Well Drained", growth_rate: "Moderate", water: "Medium", maintenance: "High",
              description: "The color of this rose is salmon-coral. Reported to have excellent dark green foliage and is a good cut flower.",
              landscape_categories: "Flower Garden");

Plant.create(name: "Marie Daly Rose", kind: "Perennial", zone: 7, height: "2-5 feet",
              bloom_time: "Spring, Summer, Fall", flower_color: "Pink", light: "Sun",
              drainage: "Moist", growth_rate: "Moderate", water: "Medium", maintenance: "Medium",
              description: "This is a relatively new rose that produces clusters of fragrant pale pink flowers and is considered a dwarf landscape rose, thus making it a great choice for mass ground cover plantings. It also is a good choice for container plantings.",
              landscape_categories: "Flower Garden");

Plant.create(name: "Rosemary", kind: "Perennial", zone: 7, height: "2-5 feet",
              bloom_time: "Spring, Summer, Fall", flower_color: "Purple", light: "Sun",
              drainage: "Well Drained", growth_rate: "Slow", water: "Low", maintenance: "Low",
              description: "Rosemary takes on different forms depending on where it is grown. As a stand alone plant it is shrublike, if located in a planter or other raised planting it drapes over the edge.",
              landscape_categories: "Herbs");
