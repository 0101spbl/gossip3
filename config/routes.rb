Rails.application.routes.draw do
  resources :gossip
  resources :user
 resources :team
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
