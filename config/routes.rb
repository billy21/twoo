Twoo::Application.routes.draw do
  resources :accounts

  devise_for :users, :controllers => { :registrations => "users/registrations" }

  get "home/index"
  get "home/howItWorks"
  get "home/bookExamples"
  get "home/faqs"
  get "home/pricingAndShipping"
  get "home/ourStory"
  get "home/ourGiving"
  get "home/privacyPolicy"
  get "home/contactUs"
  get "home/ourGuarantee"
  get "home/terms"
  get "home/pressArticle"
  get "home/bookExampleDetail"

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

#  namespace :user do
#    root :to => "users#index"
#  end
  
  root :to => "home#index" # for devise, until we switch to above

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
