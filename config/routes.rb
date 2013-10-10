Theblindpig10::Application.routes.draw do
  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config

  resources :plans


  resources :subscriptions


  devise_for :users, path_names: {sign_in: "login", sign_out: "logout"}

  get "welcome/index"

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
  root :to => redirect("/users/login")

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
#== Route Map
# Generated on 04 Oct 2013 17:45
#
#                          POST   /plans(.:format)                  plans#create
#                 new_plan GET    /plans/new(.:format)              plans#new
#                edit_plan GET    /plans/:id/edit(.:format)         plans#edit
#                     plan GET    /plans/:id(.:format)              plans#show
#                          PUT    /plans/:id(.:format)              plans#update
#                          DELETE /plans/:id(.:format)              plans#destroy
#            subscriptions GET    /subscriptions(.:format)          subscriptions#index
#                          POST   /subscriptions(.:format)          subscriptions#create
#         new_subscription GET    /subscriptions/new(.:format)      subscriptions#new
#        edit_subscription GET    /subscriptions/:id/edit(.:format) subscriptions#edit
#             subscription GET    /subscriptions/:id(.:format)      subscriptions#show
#                          PUT    /subscriptions/:id(.:format)      subscriptions#update
#                          DELETE /subscriptions/:id(.:format)      subscriptions#destroy
#         new_user_session GET    /users/login(.:format)            devise/sessions#new
#             user_session POST   /users/login(.:format)            devise/sessions#create
#     destroy_user_session DELETE /users/logout(.:format)           devise/sessions#destroy
#            user_password POST   /users/password(.:format)         devise/passwords#create
#        new_user_password GET    /users/password/new(.:format)     devise/passwords#new
#       edit_user_password GET    /users/password/edit(.:format)    devise/passwords#edit
#                          PUT    /users/password(.:format)         devise/passwords#update
# cancel_user_registration GET    /users/cancel(.:format)           devise/registrations#cancel
#        user_registration POST   /users(.:format)                  devise/registrations#create
#    new_user_registration GET    /users/sign_up(.:format)          devise/registrations#new
#   edit_user_registration GET    /users/edit(.:format)             devise/registrations#edit
#                          PUT    /users(.:format)                  devise/registrations#update
#                          DELETE /users(.:format)                  devise/registrations#destroy
#            welcome_index GET    /welcome/index(.:format)          welcome#index
#                     root        /                                 :controller#:action
