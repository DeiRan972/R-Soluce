Rails.application.routes.draw do
  get 'teams/index'
  get '/dashboard', to: 'dashboard#index'
  get '/team', to: 'teams#index'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
  resources :projects do
    resources :tasks
  end
end
