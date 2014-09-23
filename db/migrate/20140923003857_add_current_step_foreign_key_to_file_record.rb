class AddCurrentStepForeignKeyToFileRecord < ActiveRecord::Migration
  def change
    add_column :file_records, :step_id, :integer
    add_index :file_records, :step_id
  end
end
