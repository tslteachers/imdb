class Movie < ActiveRecord::Base

  def director
    Director.find_by_id(self.director_id)
  end

  # Modify this to bring back the movie's roles
  def roles
    # Movie.where(:director_id => self.id)
  end

end
