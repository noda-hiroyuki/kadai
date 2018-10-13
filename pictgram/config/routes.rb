Rails.application.routes.draw do
  get 'comments/new'
  get 'topics/new'
  get 'sessions/new'
  get 'users/new'
  get 'pages/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#index'
  get 'pages/help'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resources :users
  resources :topics do
    resources :comments
  end

  #post 'topics/show', to: 'topics#show'

  get 'favorites/index'
  post '/favorites', to: 'favorites#create'

  #get 'comments/index'
  #post '/comments/create', to: 'comments#create', as: :comment_create

end
