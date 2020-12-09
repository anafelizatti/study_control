class AddDescriptionToStudyItems < ActiveRecord::Migration[6.0]
  def change
    add_column :study_items, :description, :string
  end
end
