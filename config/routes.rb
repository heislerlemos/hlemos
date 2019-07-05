Rails.application.routes.draw do
  #get 'subscribers/index'
  resources :subscribers
  #get 'abouts/index'
 root'welcomes#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
