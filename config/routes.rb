Rails.application.routes.draw do
  root to: 'study_items#index'

  resources :study_categories

  resources :study_items do
    post 'concluded', on: :member
    post 'unconcluded', on: :member
  end
  
  resources :study_items do
    resources :study_comments
  end

end
