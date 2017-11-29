Rails.application.routes.draw do
  get 'tasks/resources'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :tasks
  resources :lists
end
