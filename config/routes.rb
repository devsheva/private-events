Rails.application.routes.draw do
  root "events#index"

  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :events
  resources :users
  resources :attendee_events
end
