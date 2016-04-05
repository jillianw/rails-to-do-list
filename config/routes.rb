Rails.application.routes.draw do
  devise_for :users
  # means: get({"tasks/new" => 'tasks#new'})
  get "tasks/new" => 'tasks#new'
  post "tasks" => 'tasks#create' # <--- form submits to here
  get "tasks/index" => 'tasks#index'
  get "tasks/:id/complete" => 'tasks#complete'

  root :to => 'tasks#index'
end
