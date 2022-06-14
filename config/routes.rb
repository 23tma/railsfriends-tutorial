Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do  
     get '/users/sign_out' => 'devise/sessions#destroy'     
  end
  resources :friends
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get 'home/about'

  # Defines the root path route ("/")
  # root "articles#index"
  #root 'home#index'
  root 'friends#index'
end
