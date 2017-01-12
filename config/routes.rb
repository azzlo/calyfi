Rails.application.routes.draw do
  resources :subjects
  resources :curriculums
  resources :study_cycles
  resources :specialties
  resources :groups
  resources :students
  resources :teachers
  devise_for :users
  get 'welcome/index'

  root 'welcome#index'

  resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
