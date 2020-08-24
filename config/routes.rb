# frozen_string_literal: true

Rails.application.routes.draw do
  get 'welcome/index'
  resources :dogs

  root 'welcome#index'
end
