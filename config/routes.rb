Rails.application.routes.draw do
  resources :invoices
  resources :clients
  resources :products
  resources :taxes
  resources :inventories
  resources :type_inventories
  resources :plans
  resources :employees
  resources :type_users
  resources :people
  resources :gyms
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
