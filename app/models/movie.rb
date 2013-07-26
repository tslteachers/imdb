class Movie < ActiveRecord::Base

  def director
    Director.find_by_id(self.director_id)
  end

  def roles
    Role.where(:movie_id => self.id)
  end

end
