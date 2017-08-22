Rails.application.routes.draw do
  resources :generic_competence_attributes
  resources :generic_competences
  resources :competition_categories
  resources :competences
  devise_for :users
  resources :curriculums do
    resources :subjects
  end
  resources :study_cycles
  resources :specialties
  resources :groups
  resources :students
  resources :teachers do
    resources :subjects do
      resources :competences
    end
  end
  resources :users

  get 'welcome/index'
  root 'welcome#index'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
