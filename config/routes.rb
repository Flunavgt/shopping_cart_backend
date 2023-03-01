Rails.application.routes.draw do
  devise_for :users
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "users#index"
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :create] do 
        resources :operations, except: [:update]
      end
      post 'login', to: 'users#login'
      resources :products, except: [:update]
    end
  end 
end