class RemoveDeadlineCheckFromStudyItems < ActiveRecord::Migration[6.0]
  def change
    remove_column :study_items, :deadline_check, :date
  end
end
