class CorrectingForeignKeysForStep < ActiveRecord::Migration

  def change
    remove_column :steps, :record_id
    remove_index :steps, :record_id
  end
  
  def change
    add_column :steps, :file_record_id, :integer
    add_index :steps, :file_record_id
  end
end
