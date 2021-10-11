Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :borrowed_books
    end
  end
  namespace :api do
    namespace :v1 do
      resources :books
    end
  end
  namespace :api do
    namespace :v1 do
      resource :users, only: [:create]
      post "/login", to: "users#login"
      get "/auto_login", to: "users#auto_login"
    end
  end
  namespace :api do
    namespace :v1 do
      resources :book_genres
    end
  end
  namespace :api do
    namespace :v1 do
      resources :roles
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
