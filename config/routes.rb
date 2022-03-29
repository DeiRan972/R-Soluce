Rails.application.routes.draw do
  get '/dashboard', to: 'dashboard#index'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
  resources :projects do
    resources :tasks
  end
end
