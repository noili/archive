class FileRecordsController < ApplicationController

  def archivate
    @file_record = FileRecord.find(params[:file_record_id]).archivate
    redirect_to file_records_path
  end
  
  def create
    @file_record = FileRecord.new(file_record_params)
    if @file_record.save
      redirect_to @file_record
    else
      render json: {status: 500}.to_json
    end
  end
  
  private
  def file_record_params
    params.require(:file_record).permit(:title, :email, :tag_list)
  end
  
end
