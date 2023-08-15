Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # create task
  get 'tasks/new', to: 'tasks#new'
  post 'tasks', to: 'tasks#create'

  # all tasks
  get 'tasks', to: 'tasks#index'

  # task details
  get 'tasks/:id', to: 'tasks#show', as: :task

  # Update task
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch 'tasks/:id', to: 'tasks#update'

  # Destroy task
  delete 'tasks/:id', to: 'tasks#destroy'
end
