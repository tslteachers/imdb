class Director < ActiveRecord::Base

  def movies
    Movie.where(:director_id => self.id)
  end


end
