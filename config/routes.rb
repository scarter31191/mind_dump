Rails.application.routes.draw do

  root to: 'application#home'

  resources :reviews
  resources :users, except: [:new]
  resources :blogs
  # resources :sessions, only: [:new, :create, :destroy]

  #signing up
  get '/signup', to: 'users#new'


  # logging in
  get '/login', to: 'sessions#login', as: :login
  post '/login', to: 'sessions#logged_in', as: :logged_in
  delete '/logout', to: 'sessions#logout', as: :logout



  # get '/blogs', to: 'blogs#index'
  # post '/blogs', to: 'blogs#create'
  # get '/blogs/new', to: 'blogs#new'
  # get '/blogs/:id', to: 'blogs#show', as: 'blog'

  # get '/blogs/:id/edit', to: 'blogs#edit'
  # patch '/blogs/:id', to: 'blogs#update'
  # post '/blogs/:id', to: 'blogs#update'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
