Rails.application.routes.draw do
  get 'search/index'
  resources 'article', only: [:index]
  get "/search", to: "search#index"
  post 'article/search', to: 'article#search'
  root 'article#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
end
