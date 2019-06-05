Rails.application.routes.draw do
  resources :priorities
root 'features#index'
  devise_for :users
  devise_for :admins
  resources :features
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
