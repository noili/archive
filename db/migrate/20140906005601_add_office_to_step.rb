class AddOfficeToStep < ActiveRecord::Migration
  def change
    add_column :steps, :office_id, :integer
    add_index :steps, :office_id
  end
end
