Rails.application.routes.draw do
  resources :computers
  resources :labs
  resources :courses
  resources :assignments
  
  root 'home#index'
  
  get 'bio', to: 'computers#bio'
  get 'bms', to: 'computers#bms'
  get 'chm', to: 'computers#chm'
  get 'cmb', to: 'computers#cmb'
  get 'geo', to: 'computers#geo'
  get 'phy', to: 'computers#phy'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
