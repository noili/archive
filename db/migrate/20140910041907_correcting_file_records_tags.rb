class CorrectingFileRecordsTags < ActiveRecord::Migration
  def change
  
    drop_table :file_records_tags
    
    create_table :file_records_tags, id: false do |t|
      t.belongs_to :file_record
      t.belongs_to :tag
    end
  
  end
end
