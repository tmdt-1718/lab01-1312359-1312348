Rails.application.routes.draw do
  resources :users do
     resources :albums
  end
  root 'pages#index'
  get 'login' => 'sessions#new'
  get 'logout' => 'sessions#destroy'
  post 'login' => 'sessions#create'
  get 'signup' => 'users#new'
  get 'about' => 'pages#about'
  get 'albums' => 'albums#index'
  get 'blogs' => 'posts#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
