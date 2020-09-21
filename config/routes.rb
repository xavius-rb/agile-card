Rails.application.routes.draw do
  resources :cards
  resources :projects
  get 'home', to: 'home#index', as: 'home'
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
