Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
Rails.application.routes.draw do
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root "lists#index"

  # Lists routes
  resources :lists, only: [:index, :show, :new, :create] do
    # Nested bookmarks — creation depends on the list
    resources :bookmarks, only: [:new, :create]
  end

  # Unnested bookmark destroy route
  resources :bookmarks, only: [:destroy]
end
end
