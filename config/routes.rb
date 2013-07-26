Imdb::Application.routes.draw do

  # Routes for the Actor resource:
  # CREATE
  get '/actors/new', controller: 'actors', action: 'new', as: 'new_actor'
  post '/actors', controller: 'actors', action: 'create'

  # READ
  get '/actors', controller: 'actors', action: 'index'
  get '/actors/:id', controller: 'actors', action: 'show', as: 'actor'

  # UPDATE
  get '/actors/:id/edit', controller: 'actors', action: 'edit', as: 'edit_actor'
  patch '/actors/:id', controller: 'actors', action: 'update'

  # DELETE
  delete '/actors/:id', controller: 'actors', action: 'destroy'
  #------------------------------

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
