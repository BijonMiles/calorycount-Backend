Rails.application.routes.draw do
  resources :schedules
  resources :days
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
