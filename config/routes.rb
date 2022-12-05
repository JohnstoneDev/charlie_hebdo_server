Rails.application.routes.draw do
  resources :articles

  post '/signup', to: 'users#create'
  get '/profile', to: 'users#show'

  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  get '/articles', to: 'articles#index'
  post '/articles', to: 'articles#create'
  get '/articles/:id', to: 'articles#show'


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
