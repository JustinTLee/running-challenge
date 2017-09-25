class RemoveNotesFromRunRecords < ActiveRecord::Migration[5.0]
  def change
    remove_column :run_records, :notes, :string
  end
end
