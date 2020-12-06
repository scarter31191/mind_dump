Rails.application.routes.draw do

  get '/blogs', to: 'blogs#index'
  get '/blogs/new', to: 'blogs#new'
  post '/blogs', to: 'blogs#create'
  get '/blogs/:id', to: 'blogs#show', as: 'blogs_show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
