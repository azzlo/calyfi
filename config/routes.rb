Rails.application.routes.draw do
  devise_for :users
  resources :curriculums do
    resources :subjects
  end
  resources :study_cycles
  resources :specialties
  resources :groups
  resources :students
  resources :teachers
  resources :users

  get 'welcome/index'
  root 'welcome#index'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
