class Movie < ActiveRecord::Base

  def director
    Director.find_by_id(self.director_id)
  end

end
