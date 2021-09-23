Rails.application.routes.draw do
  resources :conversations, only: [:index, :create] do 
    resources :messages
  end
  resources :contacts, only: [:index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
