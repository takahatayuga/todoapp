Rails.application.routes.draw do

  devise_for :users
  get "users/index" => "users#index"
  post "users/:id/update" => "users#update"
  get "users/:id/edit" => "users#edit"
  get "users/:id" => "users#show"
  get "todos/index" => "todos#index"
  get "todos/new" => "todos#new"
  get "todos/:id" => "todos#show"
  post "todos/create" => "todos#create"
  get "todos/:id/edit" => "todos#edit"
  post "todos/:id/update" => "todos#update"
  post "todos/:id/destroy" => "todos#destroy"

  get "/" => "home#top"
  get "top" => "home#top"
  get "about" => "home#about"
end
