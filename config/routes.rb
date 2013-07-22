Imdb::Application.routes.draw do

  # Create
  get "/movies/new" => 'movies#show'
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
