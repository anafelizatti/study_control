class AddDeadlineToStudyItems < ActiveRecord::Migration[6.0]
  def change
    add_column :study_items, :deadline, :string
  end
end
