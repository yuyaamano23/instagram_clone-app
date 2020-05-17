Rails.application.routes.draw do
  devise_for :users,
    controllers: { registrations: 'registrations' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'posts#index'
  get '/users/:id', to: 'users#show', as: 'user' 
  
  resources :posts, only: %i(new create index show destroy) do
    resources :photos, only: %i(create)
    
    resources :likes, only: %i(create destroy)
  end
end