class ChangeDataTypeForDeadline < ActiveRecord::Migration[6.0]
  def change
    change_column(:study_items, :deadline, :date)
  end
end
