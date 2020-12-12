class ChangeColumn < ActiveRecord::Migration[6.0]
  def change
    change_column :study_items, :category_id, :string
  end
end
