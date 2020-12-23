Rails.application.routes.draw do
  root 'products#index'
  get '/products/index', to: 'products#index'
  post '/products/index', to: 'products#add'
  post '/', to: 'products#add'
  get '/search', to: 'application#search'
end
