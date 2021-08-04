Rails.application.routes.draw do
  
  resources :products
  resources :shops, only:[:index, :show]
  
  get 'stories/top'
  get 'stories/:id', to: 'stories#show', as: :story
  get 'comments/:id', to: 'comments#show', as: :comment
  get 'welcomes/index'
  get 'virus/index'
  resources :subscribers
  get 'abouts/index'
  get 'websites/index'
    get 'sistemas/index'
        get 'aulas/index'
            resource :aulas, only: [:index], controller: :aulas
        get 'suportes/index'
        get 'redes/index'
        get 'informations/index'
        get 'subscribers/show'
        resources :blogs
 root'blogs#index'
 resources :blogs do
  resources :comentarios
 end
    mount PdfjsViewer::Rails::Engine => "/pdfjs", as: 'pdfjs'
 
end
