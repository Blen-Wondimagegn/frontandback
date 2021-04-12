# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
diets = Diet.create([{
    name: Faker::Name.male_first_name,
    age: Faker::Number.within(range: 20..35),
    gender: "Male",
    height: Faker::Demographic.height(unit: :imperial),
    diet_type: "The Paleo Diet - you should eat the same foods that your hunter-gatherer ancestors ate before agriculture developed.",
    start_weight: 146,
    lost_weight: 20,
    duration: 2, 
  },
  {
    name: Faker::Name.female_first_name,
    age: Faker::Number.within(range: 20..35),
    gender:  "Female",
    height: Faker::Demographic.height(unit: :imperial),
    diet_type: "The Vegan Diet - restricts all animal products for ethical, environmental, or health reasons.",
    start_weight: 130,
    lost_weight: 6,
    duration: 6, 

  },
  {
    name: Faker::Name.male_first_name,
    age: Faker::Number.within(range: 20..35),
    height: Faker::Demographic.height(unit: :imperial),
    gender:  "Male",
    diet_type: "Low-Carb Diets - emphasize unlimited amounts of protein and fat while severely limiting your carb intake.",
    start_weight: 170,
    lost_weight: 18,
    duration: 8, 
  },
  {
    name: Faker::Name.female_first_name,
    age: Faker::Number.within(range: 20..35),
    gender:  "Female",
    height: Faker::Demographic.height(unit: :imperial),
    diet_type: "The Dukan Diet - is a high-protein, low-carb weight loss diet split into four phases — two weight loss phases and two maintenance phases.",
    start_weight: 150,
    lost_weight: 25,
    duration: 10, 
  },
  {
    name: Faker::Name.male_first_name,
    age: Faker::Number.within(range: 20..35),
    gender:  "Male",
    height: Faker::Demographic.height(unit: :imperial),
    diet_type: "The Ultra-Low-Fat Diet - contains 10% or fewer calories from fat. The diet is mostly plant-based and has a limited intake of animal products.",
    start_weight: 180,
    lost_weight: 10,
    duration: 3, 
  },
  {
    name: Faker::Name.male_first_name,
    age: Faker::Number.within(range: 20..35),
    gender:  "Male",
    height: Faker::Demographic.height(unit: :imperial),
    diet_type: "The Atkins Diet - is split into four phases. It starts with an induction phase, during which you eat under 20 grams of carbs per day for two weeks.",
    start_weight: 186,
    lost_weight: 15,
    duration: 2, 
  },
  {
    name: Faker::Name.female_first_name,
    age: Faker::Number.within(range: 20..35),
    gender: "Female",
    height: Faker::Demographic.height(unit: :imperial),
    diet_type: "The HCG Diet(human chorionic gonadotropin) - an extreme diet meant to cause very fast weight loss of up to 1–2 pounds (0.45–1 kg) per day.",
    start_weight: 155,
    lost_weight: 5,
    duration: 2, 
 },
 {  
    name: Faker::Name.male_first_name,
    age: Faker::Number.within(range: 20..35),
    gender:  "Male",
    height: Faker::Demographic.height(unit: :imperial),
    diet_type: "The Zone Diet - is a low-glycemic load diet that has you limit carbs to 35–45% of daily calories and protein and fat to 30% each.",
    start_weight: 160,
    lost_weight: 6,
    duration: 2, 
  },
  {
    name: Faker::Name.male_first_name,
    age: Faker::Number.within(range: 20..35),
    gender:  "Male",
    height: Faker::Demographic.height(unit: :imperial),
    diet_type: "Intermittent Fasting - Rather than restricting the foods you eat, it controls when you eat them.",
    start_weight: 180,
    lost_weight: 30,
    duration: 9,
 },
 {
    name: Faker::Name.female_first_name,
    age: Faker::Number.within(range: 20..35),
    gender:  "Female",
    height: Faker::Demographic.height(unit: :imperial),
    diet_type: "Intermittent Fasting - Rather than restricting the foods you eat, it controls when you eat them.",
    start_weight: 178,
    lost_weight: 20,
    duration: 12,
  }])

reviews = Review.create([{
  comment:Faker::Quotes::Shakespeare.hamlet_quote, 
  title:Faker::Verb.past_participle, 
  diet: diets.first
 },
{
  comment:Faker::Quotes::Shakespeare.hamlet_quote, 
  title:Faker::Verb.past_participle, 
  diet: diets.first
},
  {
  comment:Faker::Quotes::Shakespeare.hamlet_quote, 
  title:Faker::Verb.past_participle, 
  diet: diets.last
    }])
