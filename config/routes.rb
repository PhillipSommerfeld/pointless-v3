Rails.application.routes.draw do
devise_for :users
  root to: 'pages#home'
  resources :offers
  get "dashboard", to: "pages#dashboard"
  resources :offers, only: [:show] do
    resources :transactions, only: [:new, :create]
  end
  post '/offers/:id/transactions/new', to: 'transactions#new', as: 'transaction'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
