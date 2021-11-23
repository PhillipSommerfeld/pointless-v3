Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :offers
  resources :transfers
  get "dashboard", to: "pages#dashboard"
  resources :offers, only: [:show]
  resources :transactions, only: [:new, :create, :index] do
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post "/offers" => "transfers#offers"
  post "new" => 'transfers#new'
end
