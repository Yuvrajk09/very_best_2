Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  root :to => "venues#index"
  resources :cuisines
  resources :dishes
  resources :users
  resources :venues
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
