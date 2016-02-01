Rails.application.routes.draw do

# We now have data incoming / outging 
# Two main categorries; root, and verb:
  #root is home page, verb are actions on data to / from browser

  #Page 1
   root 'phone_number#index' #root says what view should be hom page
  #page 2 inbound
   get "index" => "phone_number#index"
   get "submit" => "phone_number#submit"
   #Page 2 outbound
   post "submit" => "phone_number#submit" # get <"method name" => class (controller obj) # View>; sub get with post still worked
   #get and post on same action, should be able to also use: match "submit" => "phone_number#submit", via =>[:post,:get]         











  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
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

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
