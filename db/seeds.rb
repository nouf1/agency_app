# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Package.destroy_all

dubai = Package.create(
  name: 'Dubai',
  description: 'Bed and Breakfast for 3 nights in Deluxe Room with a Park access.',
  image: 'https://hi-cdn.t-rp.co.uk/images/hotels/6215374/0?width=870&height=480&crop=false',
  start_date: Date.new(2019-11-01),
  end_date: Date.new(2020-02-01),
  price: 2389,
  user_id: 2
)

bali = Package.create(
  name: 'Bali',
  description: 'Room with sea view  for 7 nights in standard room.',
  image: 'https://hi-cdn.t-rp.co.uk/images/hotels/871609/5?width=870&height=480&crop=false',
  start_date: Date.new(2019-12-01),
  end_date: Date.new(2020-03-01),
  price: 7455,
  user_id: 2
)

munich = Package.create(
  name: 'Munich',
  description: 'In the Heart of Munich enjoy your stay for 4 days in a Deluxe room.',
  image: 'https://hi-cdn.t-rp.co.uk/images/hotels/7884249/26?width=870&height=480&crop=false',
  start_date: Date.new(2020-01-01),
  end_date: Date.new(2020-02-01),
  price: 3000,
  user_id: 2
)

maldives = Package.create(
  name: 'Maldives',
  description: 'A great choice for 3 days , for  families looking to experience the Maldives, Kandima has a friendly welcoming attitude and offers the bright and breezy Kandima Kids Club, which is spacious and fun-packed, with a team of fully certified child carers on hand.',
  image: 'https://hi-cdn.t-rp.co.uk/images/hotels/6951639/0?width=870&height=480&crop=false',
  start_date: Date.new(2020-02-01),
  end_date: Date.new(2020-03-01),
  price: 4389,
  user_id: 2
)

seychelles = Package.create(
  name: 'Seychelles',
  description: 'Perched upon the white sands of Baie Lazare, this rustically elegant resort comprises airy rooms and suites overlooking the ocean and hillscapes. Enjoy  your stay for 3 nights.',
  image: 'https://hi-cdn.t-rp.co.uk/images/hotels/2956156/11?width=870&height=480&crop=false',
  start_date: Date.new(2020-02-01),
  end_date: Date.new(2020-03-01),
  price: 5687,
  user_id: 2
)

parague = Package.create(
  name: 'Prague',
  description: 'A stay for 5 nights in a 5-star hotel is (1 km) from Old Town Bridge Tower and a 15-minute walk of Prague Castle and Lennon Wall.',
  image: 'https://hi-cdn.t-rp.co.uk/images/hotels/379267/0?width=870&height=480&crop=false',
  start_date: Date.new(2020-04-01),
  end_date: Date.new(2020-05-01),
  price: 5862,
  user_id: 2
)