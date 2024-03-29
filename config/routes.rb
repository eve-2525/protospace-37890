Rails.application.routes.draw do
  devise_for :users

  root to: "prototypes#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :users, only: :show

  resources :prototypes, only: [:create, :new, :show, :edit, :update, :destroy]

  resources :prototypes do
    resources :comments, only: :create
  end

end
