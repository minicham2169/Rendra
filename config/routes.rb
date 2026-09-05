Rails.application.routes.draw do
  get "diagnoses/index"
  get "diagnoses/result"
  devise_for :users
  resources :users, only: [:show]
   resources :histories, only: [:create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :tweets do
    resources :likes, only:[:create,:destroy]
    resources :accesses, only:[:new,:create]
  end  
  root 'tweets#index'
end
