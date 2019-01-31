Rails.application.routes.draw do
  get 'directors' => 'director#index'
  get 'director/show'
  get 'director/new'
  get 'director/create'
  get 'actors' => 'actor#index'
  get 'actor/show'
  get 'actor/new'
  get 'actor/create'
  get 'movies' => 'movies#index'
  get 'movies/new' => 'movies#new'
  get 'movies/:id' => 'movies#show'
  post 'movies' => 'movies#create'
  get 'movies/:id/edit' => 'movies#edit'
  put 'movies/:id/' => 'movies#update'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end