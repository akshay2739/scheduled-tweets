Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # GET /about
  get "about-us", to: "about#index", as: :about

  get "sign_up" , to: "registrations#new", as: :sign_up

  post "sign_up", to: "registrations#create", as: :users

  root to:"main#index"
end
