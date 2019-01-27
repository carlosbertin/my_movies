Rails.application.routes.draw do
  get 'director/index'
  get 'director/show'
  get 'director/new'
  get 'director/create'
  get 'actor/index'
  get 'actor/show'
  get 'actor/new'
  get 'actor/create'
  get 'movies/index'
  get 'movies/show'
  get 'movies/new'
  get 'movies/create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
