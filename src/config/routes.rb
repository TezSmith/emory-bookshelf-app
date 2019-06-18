Rails.application.routes.draw do

 root to: 'welcome#index'

 devise_for :authors, controllers: { registrations: "authors/registrations" }

 devise_scope :author do
  get 'login', to: 'devise/sessions#new'
  get 'register', to: 'devise/registrations#new'
  get 'logout', to: 'devise/sessions#destroy'
 end

 resources :authors, only: [:show] do
   resources :books, only: [:index, :new, :create, :show]
 end


end
