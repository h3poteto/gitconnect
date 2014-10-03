Rails.application.routes.draw do
  devise_for :accounts, :controllers => {
    :omniauth_callbacks => "accounts/omniauth_callbacks"
  }
  devise_for :admins
  devise_for :clients
  devise_for :users


  root to: "statics#index"

  resources :statics, only: :index
  namespace :users do
    resources :statics, only: :index
    resources :clients, only: [:index, :show] do
      collection do
        get :search
      end
    end
  end

  namespace :clients do
    resources :statics, only: :index
    resources :settings, only: [:edit, :update]
    resources :users, only: [:index, :show] do
      collection do
        get :search
      end
    end
  end

  namespace :admins do
    resources :statics, only: :index
  end
end
