Rails.application.routes.draw do
  root "flights#index"
  resources :flights, only: :index
  resources :bookings, only: %i[new show create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
