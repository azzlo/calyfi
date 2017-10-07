Rails.application.routes.draw do
  resources :scores
  resources :teacher_groups do
    resources :competence_periods do
      resources :competences
    end
  end
  resources :generic_competence_attributes
  resources :generic_competences
  resources :competition_categories
  devise_for :users

  resources :curriculums do
    resources :subjects
  end
  resources :study_cycles
  resources :specialties
  resources :groups
  resources :students
  get '/students/:id/subjects', to: 'students#subjects', as: 'student_subjects'
  resources :teachers do
    resources :subjects do
        end
  end
  resources :users

  get 'welcome/index'
  root 'welcome#index'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
