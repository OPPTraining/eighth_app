EighthApp::Application.routes.draw do

  resources :externaltrainings


  resources :evaluations


  resources :users do
    member do
      get :following, :followers
    end
  end
  resources :sessions,   only: [:new, :create, :destroy]
  resources :microposts, only: [:create, :destroy]
  resources :relationships, only: [:create, :destroy]
  resources :courses
  resources :coursesections
  resources :evaluations
  resources :attendances
  resources :inactive

  root to: 'static_pages#home'

  match '/signup',  to: 'users#new'
  match '/signin',  to: 'sessions#new'
  match '/signout', to: 'sessions#destroy', via: :delete
  match '/help',    :to => redirect('')
  match '/about',   :to => redirect('')
  match '/contact', :to => redirect('')
  match '/newcourse', to: 'courses#new'
  match '/courses', to: 'courses#index'
  match '/externaltrainings', to: 'externaltrainings#index'
  match '/newcoursesection', to: 'coursesections#new'
  match '/newevaluation', to: 'evaluations#new'
  match '/attendance' => 'attendances#index', :as => 'attendancelist'
  match '/inactive', to: 'inactive#index'
  match '/evaluationsindex', to: 'evaluations#index'
  match '/coursesections', to: 'coursesections#index'
  match '/coursesections/:id/coursesectioneval' => 'coursesections#coursesectioneval', :as => :coursesectioneval
  match '/tagged' => 'courses#tagged', :as => 'tagged'
  #match 'coursesections/:id/attendance' => 'coursesections#attendance', :as => :attendance
  match 'coursesections/:id/coursesectioneval5' => 'coursesections#coursesectioneval5', :as => :coursesectioneval5
  match 'coursesections/:id/coursesectioneval6' => 'coursesections#coursesectioneval6', :as => :coursesectioneval6
  match 'coursesections/:id/coursesectioneval7' => 'coursesections#coursesectioneval7', :as => :coursesectioneval7
  match 'coursesections/:id/coursesectioneval8' => 'coursesections#coursesectioneval8', :as => :coursesectioneval8
  match 'courses/:id/coursereport' => 'courses#coursereport', :as => :coursereport
  match 'courses/:id' => 'courses#show', :as => :courseshow
  match 'coursesections/:id' => 'coursesections#show', :as => :coursesectionshow
  match 'courses/:id/showall' => 'courses#showall', :as => :showall


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
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
