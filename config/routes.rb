Rails.application.routes.draw do
  root to: 'study_items#index'

  resources :study_categories

  resources :study_comments

  resources :study_items do
    post 'concluded', on: :member
    post 'unconcluded', on: :member
  end
  
end
