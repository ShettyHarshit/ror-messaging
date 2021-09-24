Rails.application.routes.draw do
  resources :conversations, only: [:index, :create, :show] do 
    resources :messages, only: [:create, :show]
  end
  resources :contacts, only: [:index]
  mount ActionCable.server, at: '/cable'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
