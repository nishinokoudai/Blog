Rails.application.routes.draw do
  
  root'pages#index'
  
  get 'sessions/new'

  resources :posts do
 
  resources :comments
  
  end
  
  get    'signup'  => 'users#new'
  
  get    'login'   => 'sessions#new'
  
  post   'login'   => 'sessions#create'
  
  delete 'logout'  => 'sessions#destroy'
  
  resources :users


end

