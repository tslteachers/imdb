Imdb::Application.routes.draw do

  get '/directors' => 'directors#index'
  get '/directors/new' => 'directors#new'

  get '/directors/:id' => 'directors#show'
  post '/directors' => 'directors#create'

  get '/directors/:id/edit' => 'directors#edit'
  patch '/directors/:id' => 'directors#update'

  delete '/directors/:id' => 'directors#destroy'


  # get "/" => 'movies#index'
  root "movies#index"

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
