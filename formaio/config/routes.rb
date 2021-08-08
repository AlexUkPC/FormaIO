Rails.application.routes.draw do
  resources :answer_form_types
  resources :answer_forms
  resources :client_form_types
  resources :client_forms
  namespace :settings do
    resource :user, only: [:show, :update]
  end
  root to: "home#index"
  devise_for :users, controllers: { registrations:'registrations', omniauth_callbacks: 'omniauth' }
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
