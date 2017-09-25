class AddFinishedToRunRecords < ActiveRecord::Migration[5.0]
  def change
    add_column :run_records, :finished, :bool
  end
end
