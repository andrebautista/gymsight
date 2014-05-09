Gymsight::Application.routes.draw do

  resources :images
  get '/about', to: 'static_pages#about'
  get '/about/gallery', to: 'static_pages#gallery'

  get '/offerings', to: 'static_pages#offerings'
  get '/offerings/big-mountain-program', to: 'static_pages#bmp', as: 'bmp'
  get '/offerings/general-athletic-program', to: 'static_pages#gap', as: 'gap'
  get '/offerings/rock-and-ice-program', to: 'static_pages#rip', as: 'rip'
  get '/offerings/personal-training', to: 'static_pages#personalt', as: 'pt'
  get '/offerings/semi-private-training', to: 'static_pages#semipersonalt', as: 'spt'
  get '/offerings/essentials-pipeline', to: 'static_pages#essentials', as: 'essentials'
  get '/frequently-asked-questions', to: 'static_pages#faq', as: 'faq'
  get "contact_forms/new"

  devise_for :admins
  resources :posts
  root 'static_pages#home'
  match '/contact', to: 'contact_forms#new', via: :get
  match '/contact', to: 'contact_forms#create', via: :post



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
