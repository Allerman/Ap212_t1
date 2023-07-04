Rails.application.routes.draw do
  resources :lavanderia
  resources :quartos
  resources :banheiros
  resources :cozinhas
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'home#index'
end
