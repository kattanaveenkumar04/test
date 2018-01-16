Rails.application.routes.draw do
  # get 'welcome/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "welcome#index"
  match 'verify_service', to: "welcome#verify_service", via: [:get, :post]
end
