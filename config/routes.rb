Rails.application.routes.draw do
  resources :line_orders
  resources :orders
  get 'pages/show'
  resources :line_items
  resources :carts
  resources :products
  devise_for :users
  get 'welcome/index'
  root 'welcome#index'



  resources :checkouts  

  scope '/checkout' do 
    post 'create', to: 'checkout#create', as: 'checkout_create'
    get 'cancel', to: 'checkout#cancel', as: 'checkout_cancel'
    get 'success', to: 'checkout#success', as: 'checkout_success'
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
