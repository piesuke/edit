Rails.application.routes.draw do

  resources :home

  root to: 'hello#index'
  get 'home/index'

  get 'home/edit/:id' => 'home#edit'

  get 'hello/index'

  devise_for :useres
  patch '/home/edit/:id' => 'home#update'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
