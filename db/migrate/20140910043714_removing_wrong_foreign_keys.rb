class RemovingWrongForeignKeys < ActiveRecord::Migration
  def change
    remove_column :steps, :record_id
  end
end
