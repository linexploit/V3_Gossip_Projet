Rails.application.routes.draw do
  root to: 'welcome#index'

  resources :gossips
  resources :user
  resources :city

  get 'welcome/:first_name', to: 'welcome#index', as: 'welcome'
  
  get 'contact', to: 'contact#contact'
  get 'team', to: 'team#team'


  get "up" => "rails/health#show", as: :rails_health_check

end

