Rails.application.routes.draw do
  resources :task1s

  root to: 'task1s#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
