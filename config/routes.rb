Rails.application.routes.draw do


  get '/blogs/new', to: 'blogs#new'
  post '/blogs', to: 'blogs#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end