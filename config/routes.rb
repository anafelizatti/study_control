Rails.application.routes.draw do
  root to: 'study_items#index'
  resources :study_items
  resources :study_categories
end
