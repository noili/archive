class CreateFileRecords < ActiveRecord::Migration
  def change
    create_table :file_records do |t|
      t.string :title

      t.timestamps
    end
  end
end
