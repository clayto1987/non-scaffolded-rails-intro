NonScaffoldedExample::Application.routes.draw do

  #The URL / to load the index action of the info controller
  root :to => 'info#index'
  #path to     controller#file

  #the URL /about maps to the about action of the info controller
  match 'about' => 'info#about', :as => 'about'
  #match 'about' => 'info#about', :as => 'about', :via => :get
  #this allows you to change the url without having to change the name/path referred to everywhere
  #e.g. match 'about_company_name' => 'info#contact', :as => 'contact'

  #the URL /contact maps to the contact action of the info controller
  match 'contact' => 'info#contact', :as => 'contact'
  #this allows you to change the url without having to change the name/path referred to everywhere
  #e.g. match 'contact_us' => 'info#contact', :as => 'contact'

  #the URL /posts maps to the index action of the posts controller
  match 'posts' => 'posts#index', :as => 'posts', :via => :get

  #the URL /posts/new maps to the new action of the posts controller
  match 'posts/new' => 'posts#new', :as => 'new_post', :via => :get

  #the URL /posts accessed via POST maps to the create action of the posts controller
  match 'posts' => 'posts#create', :as => 'create_post', :via => :post

  #the URL /posts/# maps to the show action of the posts controller
  match 'posts/:id' => 'posts#show', :as => 'post', :via => :get

        #The priority is based upon order of creation:
        #first created -> highest priority.
        #
        #Sample of regular route:
        #   match 'products/:id' => 'catalog#view'
        #Keep in mind you can assign values other than :controller and :action
        #
        #Sample of named route:
        #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
        #This route can be invoked with purchase_url(:id => product.id)
        #
        #Sample resource route (maps HTTP verbs to controller actions automatically):
        #   resources :products
        #
        #Sample resource route with options:
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
        #
        #Sample resource route with sub-resources:
        #   resources :products do
        #     resources :comments, :sales
        #     resource :seller
        #   end
        #
        #Sample resource route with more complex sub-resources
        #   resources :products do
        #     resources :comments
        #     resources :sales do
        #       get 'recent', :on => :collection
        #     end
        #   end
        #
        #Sample resource route within a namespace:
        #   namespace :admin do
        #     # Directs /admin/products/* to Admin::ProductsController
        #     # (app/controllers/admin/products_controller.rb)
        #     resources :products
        #   end
        #
        #You can have the root of your site routed with "root"
        #just remember to delete public/index.html.
        #root :to => 'welcome#index'
        #
        #See how all your routes lay out with "rake routes"
        #
        #This is a legacy wild controller route that's not recommended for RESTful applications.
        #Note: This route will make all actions in every controller accessible via GET requests.
        #match ':controller(/:action(/:id))(.:format)'
end
