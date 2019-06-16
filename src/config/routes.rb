Rails.application.routes.draw do

  devise_for :authors
  devise_scope :author do
    get 'login', to: "devise/sessions#new", as: "login"
    get 'logout', to: "devise/sessions#destroy", as: "logout"
  end

  root to: "welcome#index"

  resources :authors do
   resources :books
  end

end
