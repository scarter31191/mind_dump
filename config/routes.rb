Rails.application.routes.draw do

  resources :reviews
  resources :users, except: [:new]
  resources :blogs

  #signing up
  get '/signup', to: 'users#new'


  # logging in
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'



  # get '/blogs', to: 'blogs#index'
  # post '/blogs', to: 'blogs#create'
  # get '/blogs/new', to: 'blogs#new'
  # get '/blogs/:id', to: 'blogs#show', as: 'blog'

  # get '/blogs/:id/edit', to: 'blogs#edit'
  # patch '/blogs/:id', to: 'blogs#update'
  # post '/blogs/:id', to: 'blogs#update'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
