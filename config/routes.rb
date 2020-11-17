Rails.application.routes.draw do
  get 'tasks', to: 'tasks#index'
  post 'tasks', to: 'tasks#create'
  patch 'tasks/:id', to: 'tasks#update'
  get 'tasks/new', to: 'tasks#new', as: :new
  get 'tasks/:id', to: 'tasks#show', as: :task
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit
  delete 'tasks/:id', to: 'tasks#destroy', as: :destroy
end
