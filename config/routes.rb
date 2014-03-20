Sep::Application.routes.draw do
  resources :assignments

  resources :roles

  resources :bitacoras

  resources :tipopracticas
  resources :evaluaciones

  get "sessions/new"
  get "sessions/create"
  get "sessions/destroy"
  get "users/index"
  get "users/show"
  get "users/new"
  get "users/create"
  get "users/edit"
  get "users/update"
  get "users/destroy"
  root 'pages#home'
  get "pages/admin"
  get "pages/admin1"

 get "logout" => "sessions#destroy", :as => "logout"
 get "login" => "sessions#new", :as => "login"
 get "signup" => "users#new", :as => "signup"
 resources :users
 resources :sessions

  get "pages/home"
  get "home"  => "pages#home", :as => "home"
  get "admin"  => "pages#admin", :as => "admin"
  get "admin1"  => "pages#admin1", :as => "admin1"

 resources :tipo_factores do
    resources :factores
  end

  resources :estudiantes do
    resources :asignares_proy
  end
  resources :asignares_proy do 
    resources :actividades  
  end

 

  match '/about',   to: 'pages#about',   via: 'get'

  resources :novedades

  resources :empresas

  resources :detalle_evaluaciones

  

  resources :areas


 resources :actividades
  resources :fichas

  resources :programas

  resources :categorias

  resources :jefes

  resources :actestados

  resources :tipodocs

  resources :titulaciones

  resources :centros

end
