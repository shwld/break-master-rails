Rails.application.routes.draw do
  resources :platforms
  resources :scores
  resources :users
  resources :games
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Serve websocket cable requests in-process
  # mount ActionCable.server => '/cable'
end
