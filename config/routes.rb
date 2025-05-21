Rails.application.routes.draw do

  get 'whois/index'
  get 'speeds/index'
  get 'binarys/index'
  resources :todo_lists do
    resources :todo_items do
      member do
        patch :complete
      end
    end
  end

  get 'cards/show'
  resources :products
  resources :shops, only:[:index, :show]
  resource :cards, only:[:show]
  resources :order_items
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

  get "suportes", to: "suportes#index"
  post "suportes", to: "suportes#index"
  get "speeds", to:"speeds#index"
  post "speeds", to: "speeds#index"
  
  get "whois", to: "whois#index"
  post "whois", to: "whois#index"

  get"binarys", to: "binarys#index"
  post"binarys", to: "binarys#index"
  get 'redes/index'
  get 'informations/index'
  get 'subscribers/show'
  resources :blogs
  root'welcomes#index'
  resources :blogs do
    resources :comentarios
  end
  mount PdfjsViewer::Rails::Engine => "/pdfjs", as: 'pdfjs'



end
