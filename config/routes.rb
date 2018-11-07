Rails.application.routes.draw do
  get 'status_page/home'

  get 'status_page/help'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'application#hello'
end
