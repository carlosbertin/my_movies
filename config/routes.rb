Rails.application.routes.draw do
  devise_for :users

  # listando os usuários do devise. NOTE: put this after the 'devise_for :users' line
  resources :users, only: [:index]

  resources :directors
  resources :actors
  resources :movies
  post 'movies/:id/classifications' => 'movies#create_classification'
  # get '/movies' => 'movies#index'
  # get '/movies/new' => 'movies#new'
  # post '/movies' => 'movies#create'
  # get '/movies/:id' => 'movies#show'
  # get '/movies/:id/edit' => 'movies#edit'
  # put '/movies/:id/update' => 'movies#update'
  # delete '/movies/:id' => 'movies#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end