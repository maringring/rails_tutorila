Rails.application.routes.draw do
 
  resources :users

  #Login処理
  post 'sessions/create'
  get 'sessions/new'
  get 'sessions/destroy'

  #main page
  get 'home/index'
  
  root 'sessions#new'
end
