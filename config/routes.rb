Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "tasks", to: "tasks#index", as: :tasks

  get "tasks/new", to: "tasks#new", as: :new
  post "tasks", to: "tasks#create"

  get    "tasks/:id/edit", to: "tasks#edit", as: :edit
  patch  "task/:id", to: "tasks#update"
  get "task/:id", to: "tasks#show", as: :task

  delete "task/:id", to: "tasks#destroy", as: :delete
end


