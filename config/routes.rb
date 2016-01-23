Rails.application.routes.draw do

  resources :cities

  get '/' => 'cities#index'

  get 'sign_up' => 'users#sign_up'
  post 'sign_up' => 'users#create'
end