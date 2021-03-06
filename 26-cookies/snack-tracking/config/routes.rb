Rails.application.routes.draw do
  get '/whatever', to: "snacks#home", as: "home"
  get '/fun', to: "snacks#my_super_fun_page"
  # get '/snacks', to: "snack#index", as: "snacks"
  # get '/snacks/:id', to: "snack#show", as: "snack"
  resources :snacks
  resources :retailers, only: [:index, :show, :new, :create]
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#logout"
end
