Rails.application.routes.draw do

  get 'dashboards/profile'
  root to: 'pages#home'

  devise_for :users

  resources :monkeys, only: [:index, :show, :new, :create, :edit, :update, :destroy] do
    resources :bookings, shallow: true, only: [:show, :new, :create, :destroy]
  end

  get '/profile', to: 'dashboards#profile', as: :profile





  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
