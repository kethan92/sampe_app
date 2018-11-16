Rails.application.routes.draw do

  get 'password_resets/new'

  get 'password_resets/edit'

  get 'sessions/new'

  get 'users/new'

  get 'status_page/home'

  get 'status_page/help'

  get 'status_page/about'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # root 'status_page#home'
  get 'status_page/contact'

  get  '/help', to: 'status_page#help'
  get  '/about', to: 'status_page#about'
  get  '/home', to: 'status_page#home'
  get  '/contact', to: 'status_page#contact'
  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  # debugger
  resources :users
  resources :account_activations, only: [:edit]
  resources :password_resets,     only: [:new, :create, :edit, :update]
  # resource :microposts, only:[:create, :destroy]
  # resources :microposts
  resources :microposts, only: [:create, :destroy]
end
