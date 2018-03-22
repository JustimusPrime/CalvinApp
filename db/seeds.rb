# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
10.times do |blog|
  Blog.create!(
    title: "My Blog Post #{blog}",
    body: "awwww snaaaaapppp.awwww snaaaaapppp.awwww snaaaaapppp.awwww snaaaaapppp.awwww snaaaaapppp.awwww snaaaaapppp.awwww snaaaaapppp.awwww snaaaaapppp.awwww snaaaaapppp.awwww snaaaaapppp.awwww snaaaaapppp.awwww snaaaaapppp.awwww snaaaaapppp.awwww snaaaaapppp.awwww snaaaaapppp.awwww snaaaaapppp.awwww snaaaaapppp.awwww snaaaaapppp.awwww snaaaaapppp.awwww snaaaaapppp.awwww snaaaaapppp.awwww snaaaaapppp.awwww snaaaaapppp.awwww snaaaaapppp.awwww snaaaaapppp.awwww snaaaaapppp.awwww snaaaaapppp.awwww snaaaaapppp.awwww snaaaaapppp.awwww snaaaaapppp.awwww snaaaaapppp.awwww snaaaaapppp.awwww snaaaaapppp.awwww snaaaaapppp.awwww snaaaaapppp.awwww snaaaaapppp.awwww snaaaaapppp.awwww snaaaaapppp.awwww snaaaaapppp.awwww snaaaaapppp.awwww snaaaaapppp.awwww snaaaaapppp.awwww snaaaaapppp.awwww snaaaaapppp.awwww snaaaaapppp.awwww snaaaaapppp.",
    )
end

10.times do |gig|
  Gig.create!(
    date: "2018-07-01",
    time: "2018-07-01 15:45:00",
    show_name: "75th Annual UG Anniversary",
    location: "123456 Superfunstreet, New York, NY 10018",
    link: "http://www.imdb.com/name/nm3519948/",
    )
end

10.times do |press_clip|
  PressClip.create!(
    title: "Comedy Hole Magazine",
    subtitle: "They wrote this sweet article about me",
    link: "http://www.imdb.com/name/nm3519948/",
    image: "https://images-na.ssl-images-amazon.com/images/M/MV5BMmY5MTRlOTctY2JhZC00MDk5LWIwNDEtYjQ0ZWViZjU2N2VkXkEyXkFqcGdeQXVyMTk0MDM5NTg@._V1_SY1000_CR0,0,666,1000_AL_.jpg",
    )
end


