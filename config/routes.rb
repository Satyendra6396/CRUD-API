Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  post 'create', to: 'books#create'
  get 'show', to: 'books#show'
  delete 'destroy', to: 'books#destroy'
  patch 'update', to: 'books#update'
  # Defines the root path route ("/")
  # root "articles#index"
end
