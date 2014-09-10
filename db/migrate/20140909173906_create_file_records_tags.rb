class CreateFileRecordsTags < ActiveRecord::Migration

  def change
  
    create_table :file_records_tags, id: false do |t|
      t.belongs_to :file_record
      t.belongs_to :part
    end
    
  end
  
end
