Rails.application.routes.draw do


	require 'resque/server'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'posts', to: 'posts#index'

  # get 'posts/new', to: 'posts#new'

  post 'posts/create', to: 'posts#create', as: :posts_new

  delete 'posts/delete/:id', to: 'posts#destroy', as: :post_delete

  root 'posts#index'

  post 'comments/create', to: 'comments#create', as: :comments_create

  post 'images/create', to: 'images#create', as: :images

  mount Resque::Server.new, at: "/resque"
end
