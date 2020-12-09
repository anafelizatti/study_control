json.extract! study_item, :id, :title, :category, :description, :deadline, :created_at, :updated_at
json.url study_item_url(study_item, format: :json)
