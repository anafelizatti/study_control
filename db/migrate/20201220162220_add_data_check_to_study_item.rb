class AddDataCheckToStudyItem < ActiveRecord::Migration[6.0]
  def change
    add_column :study_items, :data_check, :string
  end
end
