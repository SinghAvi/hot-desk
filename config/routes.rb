Rails.application.routes.draw do
  devise_for :staffs, controllers: { registrations: 'staffs/registrations', sessions: 'staffs/sessions' }
  root to: 'home#index'
  resources :desks
  resources :bookings
  resources :staffs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
