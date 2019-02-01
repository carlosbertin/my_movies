Rails.application.routes.draw do
  resources :directors
  resources :actors
  get 'movies' => 'movies#index'
  get 'movie/new' => 'movies#new'
  get 'movie/:id' => 'movies#show'
  post 'movie' => 'movies#create'
  get 'movie/:id/edit' => 'movies#edit'
  put 'movie/:id/update' => 'movies#update'
  delete 'movie/:id/destroy' => 'movies#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end