Blog1::Application.routes.draw do

  resources :posts do 
    resources :comments
  end

  resources :users

  get "login" => "sessions#new"
  post "login" => "sessions#create"
  delete "logout" => "sessions#destroy"
  get "logout" => "sessions#destroy"
  
  get "about" => "site#about"
  get "contact" => "site#contact"
  get "privacy" => "site#privacy"
  get "terms" => "site#terms"

  root to: "site#index"
end
