class AddDirectorToMovies < ActiveRecord::Migration
  def change

    add_column :movies, :director_id, :integer


  end
end

# CHALLENGE
#
# Create a migration like this to add a column to the movies table.
#
# Use Rails console to add a Director or two.
# Use Rails console to connect a director to a movie.
#
# BONUS: Modify the Movie's show template to display the director's name.
