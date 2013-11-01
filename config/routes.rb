Auth8::Application.routes.draw do
  resources :users


  resources :posts
  root :to => 'home#index'
  post 'signup' => 'home#create_user'
end
