Rails.application.routes.draw do
  
  resources :file_records do
    resources :steps
    put 'archivate'
  end
  
end
