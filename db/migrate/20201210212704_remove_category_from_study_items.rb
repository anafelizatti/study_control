class RemoveCategoryFromStudyItems < ActiveRecord::Migration[6.0]
  def change
    remove_column :study_items, :category, :string
    add_column :study_items, :category_id, :integer
  end
end
