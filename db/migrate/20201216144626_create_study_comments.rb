class CreateStudyComments < ActiveRecord::Migration[6.0]
  def change
    create_table :study_comments do |t|
      t.string :commenter
      t.text :body
      t.references :study_item, null: false, foreign_key: true

      t.timestamps
    end
  end
end
