# frozen_string_literal: true

Rails.application.routes.draw do
  resources :todos
  root to: 'todos#index'

  get '/completd/:id', to: 'completed#update', as: 'update_completed'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
