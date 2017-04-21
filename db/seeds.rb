# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

city_definitions  = [
  {
    city_name: 'Mexico City',
    country_name: 'Mexico'
  },
  {
    city_name: 'Lima',
    country_name: 'Peru'
  },
  {
    city_name: 'Medellin',
    country_name: 'Colombia'
  },
  {
    city_name: 'Buenos Aires',
    country_name: 'Argentina'
  },
]

cities = city_definitions.map do |city_definition|
  City.create(
    city_name: city_definition[:city_name],
    country_name: city_definition[:country_name]
  )
end

BEER_TYPES = [
  'Ale',
  'Lager'
]

BEER_STYLES = [
  'White',
  'Blonde',
  'Red',
  'Pale Ale',
  'IPA',
  'Brown',
  'Stout',
  'Sour'
]

beers = 10.times.map do
  Beer.create(
    name: "#{Faker::Hipster.word} #{BEER_STYLES.sample} #{BEER_TYPES.sample}".titleize,
    style: BEER_STYLES.sample,
    rating: rand,
    city: cities.sample
  )
end
