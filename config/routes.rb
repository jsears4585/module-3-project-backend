Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  post '/user_create', to: 'users#create'
  post '/artwork_create', to: 'artworks#create'
  get '/user_get', to: 'users#show'



end
