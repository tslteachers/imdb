
Director.destroy_all

ron = Director.new
ron.name = "Ron Howard"
ron.save

steven = Director.new
steven.name = "Steven Spielberg"
steven.save

george = Director.new
george.name = "George Lucas"
george.save

list_of_movies = [
  { title: 'Lincoln', year: 2012, director_id: steven.id },
  { title: 'Apollo 13', year: 1995, director_id: ron.id },
  { title: 'Star Wars', year: 1977, director_id: george.id },
  { title: 'Raiders of the Lost Ark', year: 1981, director_id: steven.id }
]

Movie.destroy_all
list_of_movies.each do |movie_data|
  m = Movie.new
  m.title = movie_data[:title]
  m.year = movie_data[:year]
  m.director_id = movie_data[:director_id]
  m.save
end

puts "There are now #{Movie.count} movies and #{Director.count} directors."
