Rails.application.routes.draw do

  devise_for :users, controllers: {omniauth_callbacks: "omniauth_callbacks"}

  authenticated :user do
    root to: 'dashboards#index', as: 'authenticated_root'
  end


  #unauthenticated_user
  root 'landing#index'

  resources :vehicles

end
