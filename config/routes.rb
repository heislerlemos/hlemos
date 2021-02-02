Rails.application.routes.draw do
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
  resources :blogs
 root'blogs#index'
 resources :blogs do
  resources :comentarios
 end
    mount PdfjsViewer::Rails::Engine => "/pdfjs", as: 'pdfjs'
 
end
