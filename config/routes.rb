Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # read all tasks
  get "/tasks", to: "tasks#index"
  post "/tasks", to: "tasks#create"
  # create one task
  get "/tasks/new", to: "tasks#new"
  # read one task
  get "/tasks/:id", to: "tasks#show", as: "task"
  # update a task
  # delete a task
  delete "/tasks/:id", to: "tasks#destroy"
  patch "/tasks/:id", to: "tasks#update"
  patch "/tasks/:id/done", to: "tasks#mark_as_done", as: "done"
  get "/tasks/:id/edit", to: "tasks#edit", as: "edit"
end
