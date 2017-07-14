Rails.application.routes.draw do
  resources :users
  get '/artworks/page/:page', to: 'artworks#index'
  resources :artworks, except: [:index]
end
