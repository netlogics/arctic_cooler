Rails.application.routes.draw do
  resources :grids
  resources :ventilation_logs
  resources :fans
  resources :locations
  resources :motors
  resources :motor_details
  resources :blades
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
