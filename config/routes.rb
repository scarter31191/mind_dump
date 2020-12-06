Rails.application.routes.draw do

  resources :reviews
  resources :users
  get '/blogs', to: 'blogs#index'
  post '/blogs', to: 'blogs#create'
  get '/blogs/new', to: 'blogs#new'
  get '/blogs/:id', to: 'blogs#show', as: 'blog'

  get '/blogs/:id/edit', to: 'blogs#edit'
  patch '/blogs/:id', to: 'blogs#update'
  post '/blogs/:id', to: 'blogs#update'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
