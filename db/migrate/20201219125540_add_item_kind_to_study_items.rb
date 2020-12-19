class AddItemKindToStudyItems < ActiveRecord::Migration[6.0]
  def change
    add_column :study_items, :item_kind, :string
  end
end
