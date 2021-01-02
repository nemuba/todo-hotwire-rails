# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'welcome#index'
  devise_for :users
  resources :todos

  get '/completd/:id', to: 'completed#update', as: 'update_completed'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
