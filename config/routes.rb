Rails.application.routes.draw do

  # get 'users/new'
  # get '/new', to: 'users#new'
  # get '/users', to:'users'
  # get '/signup', to: '/users/signup'

  root 'static_pages#home'
  get '/help', to: 'static_pages#help'
  get '/about', to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'
  get '/signup', to: 'users#new'
end
