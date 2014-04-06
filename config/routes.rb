Whatsgoingon::Application.routes.draw do

  get "get_markers/getmark"
  match "groups/changeVisibility", via: :post
  match "group_members/accept", via: :post
  match "group_members/reject", via: :post
  devise_for :admin_users, ActiveAdmin::Devise.config

  match "groups" => "groups#index", via: :get
  match "groups" => "groups#destroy", via: :delete
  get "pages/terms"
  get "pages/welcome"
  get "pages/landing"
  devise_for :users, controllers: { omniauth_callbacks: "omniauth_callbacks" }
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  
  resources :check_in, only: [:create, :new]
  resources :groups, only: [:new, :create, :destroy, :show]
  resource :group_members, only: [:create, :destroy]
  resource :friends, only: [:create, :new, :destroy, :show]



  root 'pages#landing'
  ActiveAdmin.routes(self)

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

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
