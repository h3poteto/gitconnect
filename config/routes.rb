Rails.application.routes.draw do
  devise_for :clients
  devise_for :users, :controllers => {
    :omniauth_callbacks => "users/omniauth_callbacks"
  }
  root to: "statics#index"

  resources :statics, only: :index
  namespace :users do
    resources :dashboards, only: :index
  end

  namespace :clients do
    resources :statics, only: :index
    resources :users, only: [:index, :show] do
      collection do
        get :search
      end
    end
  end
end
