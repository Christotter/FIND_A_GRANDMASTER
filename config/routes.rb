Rails.application.routes.draw do
  get 'users/new'
  get 'users/create'
  get 'users/show'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :grandmasters do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: [:destroy, :index]
end
