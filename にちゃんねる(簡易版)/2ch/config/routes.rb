Rails.application.routes.draw do

  resources :boards
  resources :comments 
  root to: "borlds#index"
end
