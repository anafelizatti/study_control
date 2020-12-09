Rails.application.routes.draw do
  root to: redirect('/study_items')
  resources :study_items
end
