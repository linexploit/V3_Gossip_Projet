Rails.application.routes.draw do
  get 'contact', to: 'contact#contact'
  get 'team', to: 'team#team'
  get 'welcome/:first_name', to: 'welcome#index', as: 'welcome'
  get 'gossip/:id', to: 'gossips#show', as: 'gossip'
  get 'user/:id', to: 'user#show', as: 'user'
  root 'welcome#index'

  resources :gossips

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
 