# -*- encoding : utf-8 -*-
Rails.application.routes.draw do


  namespace :admin do
  get 'curr_quote_minlines/index'
  end

  ResqueWeb::Engine.eager_load!

  require 'resque_web'
  resque_web_constraint = lambda { |request| request.remote_ip == '127.0.0.1' }
  constraints resque_web_constraint do
    mount ResqueWeb::Engine => "/resque_web"
  end


  get 'login' => "session#login"
  post 'login' => "session#login"

  #resources :products, :only => [:index, :show]

  namespace :dashboard do
    get '/' => "base#index"
  end

  namespace :admin do
    get '/' => "base#index"

    get 'settings/index'
    resources :users
    resources :staffs
    resources :markets
    resources :stocks
    resources :curr_quote_minlines

    get 'settings' => 'settings#index'
  end

  
  
  namespace :api do
    resource :wechat, controller: :wechat, only: [:show, :create]
  end

  get 'auth/wechat/callback' => "wechat/base#login_from_wechat"
  get 'auth/wechat/failure' => "wechat/base#failure"
  get 'auth/failure' => "wechat/base#failure"

  namespace :wechat do
    patch 'change_last_quantity' => "base#change_last_quantity"
    patch 'change_product' => "base#change_product"
    patch 'change_address' => "base#change_address"
    get "/" => "base#index"
    get 'order_confirm' => "base#order_confirm"
    post 'place_order' => "base#place_order"
    post 'notify' => "base#notify"
    get 'orders' => "base#orders"
    get 'news'   => "base#news"
  end

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
 root 'welcome#index'

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
