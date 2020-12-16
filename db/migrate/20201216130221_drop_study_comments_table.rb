class DropStudyCommentsTable < ActiveRecord::Migration[6.0]
  def change
    drop_table :study_comments
  end
end
