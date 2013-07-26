class Role < ActiveRecord::Base

  def movie
    Movie.find_by_id(self.movie_id)
  end

  def actor
    Actor.find_by_id(self.actor_id)
  end

  # Add a similar method for looking up the role's actor
  # Use the two methods to improve the roles show and index pages
end
