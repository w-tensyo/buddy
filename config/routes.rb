Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations',
  }
  devise_scope :user do
    get 'profile', to: 'users/registrations#new_profile'
    post 'profile', to:  'users/registrations#create_profile'
  end
  root to: 'items#index'
end
