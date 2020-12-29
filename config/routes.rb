Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "top#index"

  get "about" => "top#about", as: "about"
  get "bad_request" => "top#bad_request"
  get "forbidden" => "top#forbidden"
  get "internal_server_error" => "top#internal_server_error"
  
  resources :plans, only: [:index, :show] do
    get "search", on: :collection
  end
  resource :mypage do
    get "index", on: :collection
  end

  resources :members, only: [:index, :new, :create]
  resource :session, only: [:create, :destroy]
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

