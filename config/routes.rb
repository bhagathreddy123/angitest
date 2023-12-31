Rails.application.routes.draw do
  resources :employees
  devise_for :users
  resources :words
  root "words#index"
  resources :games
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
