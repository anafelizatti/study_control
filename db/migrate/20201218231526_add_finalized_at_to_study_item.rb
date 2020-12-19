class AddFinalizedAtToStudyItem < ActiveRecord::Migration[6.0]
  def change
    add_column :study_items, :finalized_at, :date
  end
end
