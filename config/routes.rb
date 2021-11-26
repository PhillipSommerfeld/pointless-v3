Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get "dashboard", to: "pages#dashboard"
  resources :offers do
    resources :transactions, only: %i[new create]
  end
  resources :transactions, only: %i[index show destroy]
  resources :offers, only: %i[index show destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
