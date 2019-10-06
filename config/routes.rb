Rails.application.routes.draw do
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'session#destroy'
  get 'sessions/new'

  namespace :admin do
    resources :users
  end

  resources :task1s

  root to: 'task1s#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
