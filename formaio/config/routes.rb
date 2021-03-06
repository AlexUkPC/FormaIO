Rails.application.routes.draw do
  get 'dashboard/index', as:"dashboard"
  resources :client_form_categories
  resources :answer_form_types
  resources :answer_forms
  resources :client_form_types
  resources :client_forms
  namespace :settings do
    resource :user, only: [:show, :update]
  end
  root to: "home#index"
  get "home/subcategory"
  devise_for :users, controllers: { registrations:'registrations', omniauth_callbacks: 'omniauth' }
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
