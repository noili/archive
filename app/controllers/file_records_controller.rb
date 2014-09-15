class FileRecordsController < ApplicationController

  def new
  end
  
  def create
    @file_record = FileRecord.new(params[:title])
    if @file_record.save
      flash[:notice] = 'Created succesfully'
      redirect_to @file_record
    else
      render :new
    end
  end
  
  private
  def file_record_params
    params.require(:file_record).permit(:title)
  end
  
end
