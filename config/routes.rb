Rails.application.routes.draw do

  root to: 'articles#index'

  resources :articles
  resources :comments
  resources :users
  resource :session , only: %i[new create destroy]
end
