TemplateApp::Application.routes.draw do
  #get "static_pages/home"

  get "static_pages/about"

  get "static_pages/contact"

  get "static_pages/terms"

  get "static_pages/privacy"

  resources :articles

  post "articles"=>"articles#create", :as => "create"



  # The priority is based upon order of creation:
  # first created -> highest priority.
  
  root to: 'static_pages#home'

  match '/fashion/signup', to: 'fashion#signup'
  match '/fashion/social_accounts', to: 'fashion#social_accounts'
  match '/fashion/press_articles', to: 'fashion#press_articles'
  match '/fashion/page_setup', to: 'fashion#analytics'

  match '/fashion/new', to: 'articles#new'

  match '/about', to: 'static_pages#about'
  match '/contact', to: 'static_pages#contact'
  match '/terms', to: 'static_pages#terms'
  match '/privacy', to: 'static_pages#privacy'
  match '/feedback', to: 'static_pages#feedback'

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
