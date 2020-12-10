class CreateStudyCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :study_categories do |t|
      t.string :title

      t.timestamps
    end
  end
end
