Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :bloggers, only: [:index, :show, :new, :create]
  resources :destinations
  resources :posts
end
