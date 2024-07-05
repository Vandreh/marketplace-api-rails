# frozen_string_literal: true

Rails.application.routes.draw do
  # devise_for :users
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'

  # get 'up' => 'rails/health#show', as: :rails_health_check

  namespace :api, defaults: { format: :json }, constraints: { subdomain: 'api' }, path: '/' do
    scope module: :v1, constraints: ApiConstraints.new(version: 1, default: true) do
      resources :users, only: [:show] # get 'users', to 'api/v1/users#show'
    end
  end
end
