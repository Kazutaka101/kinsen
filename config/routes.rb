Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "top#index"
  
  resources :plans, only: [:index, :show] do
    get "search", on: :collection
  end
  resource :mypage do
    get "index", on: :collection
  end

  resources :members, only: [:index, :new, :create]
  resources :sessions, only: [:create, :destroy]
  resources :reservations, only: [:new, :create, :show]

  namespace :admin do
    root to: "top#index"
    resources :plans
    resources :members, only: [:index]
    resources :dinners, except: [:edit, :update]
    resources :reservations, except: [:new, :create]
    resource :sessions, only: [:create, :destroy]
  end
end

