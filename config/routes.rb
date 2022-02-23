Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

    resources :dance_classes
    resources :teachers
    resources :studios
    resources :levels, only: [:index, :show]
end
