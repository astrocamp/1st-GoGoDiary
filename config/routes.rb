Rails.application.routes.draw do
  root 'diaries#index'
  resources :diaries
  devise_for :users
  resources :users
  get "/ajax", to: "users#ajax"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
