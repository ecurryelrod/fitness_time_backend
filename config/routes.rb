Rails.application.routes.draw do
  resources :dance_classes
  resources :teachers
  resources :studios
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
