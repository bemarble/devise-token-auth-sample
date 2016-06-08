Rails.application.routes.draw do
  root to: "note#index"

  resources :notes
  mount_devise_token_auth_for 'User', at: '/api/v1/auth', defaults: { format: :json }
end
