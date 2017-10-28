Rails.application.routes.draw do

  get 'words/index'

  get "users/login"

  # Could Be Improved by using resources
  get 'signup', to: 'users#new', as: 'signup'
  post 'signup', to: 'users#create' 
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

end
