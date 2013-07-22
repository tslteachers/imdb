Imdb::Application.routes.draw do

  # This file has no bugs in it, but others do.

  # Create
  get "/movies/new" => 'movies#new'
  post "/movies" => 'movies#create'

  # Read
  get "/movies" => "movies#index"
  get "/movies/:id" => 'movies#show'

  # Update
  get "/movies/:id/edit" => 'movies#edit'
  patch "/movies/:id" => 'movies#update'

  # Delete
  delete "/movies/:id" => 'movies#destroy'

end
