Whatsgoingon::Application.routes.draw do
  root 'pages#landing'

  get "pages/terms"
  get "pages/landing"

  
  resources :sessions, only: [:new, :create, :destroy]
  
  devise_for :admin_users, ActiveAdmin::Devise.config

  devise_for :users, controllers: { omniauth_callbacks: "omniauth_callbacks" }
  resources :users
  match "users/update_location" => "users#update_location", via: :post
  match "users/color_status" => "users#color_status", via: :post
  match "users/changeVisibility" => "users#changeVisibility", via: :post


  
  resources :groups, only: [:new, :create, :destroy, :show]
  match "groups" => "groups#index", via: :get
  match "groups" => "groups#destroy", via: :delete
  match "groups/changeVisibility" => "groups#changeVisibility", via: :post


  resource :group_members, only: [:create, :destroy]


  
  resources :events, only: [:new, :create, :destroy, :show]
  match "events" => "events#index", via: :get
  match "events" => "events#destroy", via: :delete
  match "events/update_location" => "events#update_location", via: :post
  match "events/update_location_single" => "events#update_location_single", via: :post
  match "events/new_event" => "events#create", via: :post
  match "events/delete" => "events#destroy", via: :post

  resource :friends do
    collection do
      get 'search'
      get 'getmarkers'
      post 'accept'
      post 'reject'
      post 'auth'
      post 'wave'
      post 'acceptwave'
      post 'rejectwave'
    end
  end
  match "friends/destroy" => "friends#destroy", via: :post



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
