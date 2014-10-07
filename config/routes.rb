Rails.application.routes.draw do
  
  namespace :backend do resources :steps end
  namespace :backend do resources :persons end
  namespace :backend do resources :offices end
  namespace :backend do resources :file_records end
  resources :file_records do
    resources :steps
    put 'archivate'
  end
  
end
