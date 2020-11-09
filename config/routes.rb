Rails.application.routes.draw do
  get 'stories/top'
  get 'stories/:id', to: 'stories#show', as: :story
  get 'comments/:id', to: 'comments#show', as: :comment

  get 'virus/index'
  #get 'subscribers/index'
  resources :subscribers
  get 'abouts/index'
  get 'websites/index'
    get 'sistemas/index'
        get 'aulas/index'
            resource :aulas, only: [:index], controller: :aulas
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
