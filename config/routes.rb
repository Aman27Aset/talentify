Rails.application.routes.draw do
  resources :comments
  resources :posts
  devise_for :users
  root 'pages#home'
  
  resources :post do
    resources :comment
 end
end