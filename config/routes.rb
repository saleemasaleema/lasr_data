Rails.application.routes.draw do
  resources :attends
  resources :taughts
  resources :takens
  resources :class_rooms
  resources :sections
  resources :instructorrs
  resources :courses
  resources :students
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
