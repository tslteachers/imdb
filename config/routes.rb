Imdb::Application.routes.draw do

  # CHALLENGE:  Name as many routes as you need
  # so that you can use named helper methods in the views
  # and controllers instead of hardcoded URLs.

  get '/directors' => 'directors#index'
  get '/directors/new' => 'directors#new'

  get '/directors/:id' => 'directors#show', as: 'director'
  post '/directors' => 'directors#create'

  get '/directors/:id/edit' => 'directors#edit', as: 'edit_director'
  patch '/directors/:id' => 'directors#update'

  delete '/directors/:id' => 'directors#destroy'


  # get "/" => 'movies#index'
  root "movies#index"

  # Create
  get "/movies/new" => 'movies#new', as: 'new_movie'
  post "/movies" => 'movies#create'

  # Read
  get "/movies" => "movies#index"
  get "/movies/:id" => 'movies#show', as: 'movie'

  # Update
  get "/movies/:id/edit" => 'movies#edit', as: 'edit_movie'
  patch "/movies/:id" => 'movies#update'

  # Delete
  delete "/movies/:id" => 'movies#destroy'

end
