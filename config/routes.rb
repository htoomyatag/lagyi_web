Rails.application.routes.draw do
  resources :infos
 
  # This line mounts Solidus's routes at the root of your application.
  # This means, any requests to URLs such as /products, will go to Spree::ProductsController.
  # If you would like to change where this engine is mounted, simply change the :at option to something different.
  #
  # We ask that you don't use the :as option here, as Solidus relies on it being the default of "spree"
  mount Spree::Core::Engine, at: '/'
    Spree::Core::Engine.routes.draw do
    	get '/termns_and_conditions', to: 'infos#termns_and_conditions', as: :termns_and_conditions
      get '/privacy_policy', to: 'infos#privacy_policy', as: :privacy_policy
      get '/returns_and_cancellations_policy', to: 'infos#returns_and_cancellations_policy', as: :returns_and_cancellations_policy
      get '/contact_us', to: 'infos#contact_us', as: :contact_us
      get '/about_us', to: 'infos#about_us', as: :about_us

    end
  
end
