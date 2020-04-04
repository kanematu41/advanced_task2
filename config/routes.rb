Rails.application.routes.draw do

  devise_for :users
  resources :users,only: [:show,:index,:edit,:update]
  resources :books
  root 'home#top'
  get 'home/about'

  post 'follow/:id' => 'relationships#follow', as: 'follow'
  post 'unfollow/:id' => 'relationships#unfollow', as: 'unfollow'

  get 'user/:id/follows' => 'relationships#follows', as: 'follows'
  get 'user/:id/followers' => 'relationships#followers', as: 'followers'
end
