Rails.application.routes.draw do
  devise_for :users, :controllers => {
    :omniauth_callbacks => "users/omniauth_callbacks"
  }
  root to: "statics#index"

  resources :statics, only: :index
  namespace :users do
    resources :dashboards, only: :index
  end
end
