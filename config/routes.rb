Rails.application.routes.draw do

  get 'users/index'
  root 'homes#index'
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    passwords: 'users/passwords'
  }
  
  devise_scope :user do
    post 'users/guest_sign_in', to: 'users#new_guest'

  resources :users

  end


end
