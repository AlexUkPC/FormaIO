Rails.application.routes.draw do
  namespace :settings do
    resource :user, only: [:show, :update]
  end
  root to: "home#index"
  devise_for :users, controllers: { registrations:'registrations', omniauth_callbacks: 'omniauth' }
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
