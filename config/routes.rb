Rails.application.routes.draw do
  resources :packages
  devise_for :users
  # get 'packages/index'
  # get 'packages/new'
  # get 'packages/create'
  # get 'packages/show'
  # get 'packages/edit'
  # get 'packages/update'
  # get 'packages/destroy'
  # get 'users/index'

  root 'packages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
