Rails.application.routes.draw do
  devise_for :users
  resources :contacts, only: [:index, :show, :create]
  root 'contacts#index'
end
