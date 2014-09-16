Rails.application.routes.draw do
  
  resources :file_records do
    put 'archivate'
  end
  
end
