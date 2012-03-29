IdeaStorming::Application.routes.draw do
  get "calificacion/index"
  
  get "calificacion/update"

  post "calificacion/new"

  get "calificacion/show"

  get "proyecto/index"

  post "proyecto/new"

  get "proyecto/edit"

  post "registro_proyecto/index"
  
  post "registro_user/login"

  post "registro_user/index"

  get "sitio/perfil_usuario"

  get "sitio/index"

  get "sitio/publicacion_proyecto"

  get "sitio/ficha_proyecto"

  get "sitio/calificacion_proyecto"
resources :proyecto
resources :user
resources :calificarcion

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
   root :to => 'sitio#index'
   match "/home" => "sitio#index" , :as => :home
   match "/registro" => "registro_user#index" , :as => :registro
   match "/calificacionproyecto" => "sitio#calificacion_proyecto" , :as => :calificacionproyecto
   match "/fichaproyecto" => "sitio#ficha_proyecto" , :as => :fichaproyecto
   match "/perfilusuario" => "sitio#perfil_usuario" , :as => :perfilusuario
   match "/publicacionproyecto" => "sitio#publicacion_proyecto" , :as => :publicacionproyecto
   match "/login" => "registro_user#login" , :as => :login
   match "/logout" => "registro_user#logout" , :as => :logout
   match "/ingresoproyecto" => "proyecto#new" , :as => :ingresoproyecto
   match "/fichaproyectousuario" =>"proyecto#index" , :ass => :fichaproyectousuario
    match "/modificarproyecto" =>"proyecto#edit" , :ass => :modificarproyecto
    match "/ingresocalificacion" =>"calificacion#new" , :ass => :ingresocalificacion
  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
