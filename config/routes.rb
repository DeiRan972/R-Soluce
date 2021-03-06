Rails.application.routes.draw do
  resources :teams, except: %i[new create destroy]
  get '/tasks_user', to: 'tasks#user_tasks'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'dashboard#index'
  resources :projects do
    resources :tasks
  end
  resources :roles, only: %i[index create new destroy]
end
