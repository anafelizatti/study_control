class RemoveDateTodayFromStudyItems < ActiveRecord::Migration[6.0]
  def change
    remove_column :study_items, :date_today, :date
  end
end
