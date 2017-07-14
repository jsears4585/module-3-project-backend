Rails.application.routes.draw do
  get '/artworks/user/:user_id', to: 'users#index'
  resources :users, except: [:index]
  get '/artworks/page/:page', to: 'artworks#index'
  resources :artworks, except: [:index]
end
