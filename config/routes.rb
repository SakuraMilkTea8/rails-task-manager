Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # list tasks
  get '/tasks', to: 'tasks#index', as: 'tasks'
  # add a new task
  get '/tasks/new', to: 'tasks#new', as: 'new_task' # display the form
  post '/tasks', to: 'tasks#create'
  # view the details of a task
  get '/tasks/:id', to: 'tasks#show', as: 'task'
  # edit a task (mark as complete/update title & details)
  get '/tasks/:id/edit', to: 'tasks#edit', as: 'edit_task'
  patch '/tasks/:id', to: 'restaurants#update'
  # remove a task
  delete '/tasks/:id', to: 'tasks#destroy'
end
