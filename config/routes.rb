Auth8::Application.routes.draw do
  resources :posts
  root :to => 'home#index'
end
