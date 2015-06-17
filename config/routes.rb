Rails.application.routes.draw do
  resources :reviews
  devise_for :users
  resources :posts do 
  	resources :comments
  end

  root 'posts#index'
end
