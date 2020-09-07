Rails.application.routes.draw do
  get 'virus/index'
  #get 'subscribers/index'
  resources :subscribers
  get 'abouts/index'
  get 'websites/index'
    get 'sistemas/index'
        get 'aulas/index'

        get 'suportes/index'
        get 'redes/index'
        get 'informations/index'
  resources :blogs
 root'welcomes#index'
 resources :blogs do
  resources :comentarios
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
