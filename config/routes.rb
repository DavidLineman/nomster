Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'places#index'
  resources :places do 
    resources :comments, :photos, only: :create
  end
  resources :users, only: :show
end
