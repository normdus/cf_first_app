Rails.application.routes.draw do
 
# 5.1 routes change root
 root 'static_pages#landing_page'
#  root 'static_pages#index'
 
  resources :products
  
  resources :orders, only: [:index, :show, :create, :destroy]

  get 'static_pages/about', to: 'static_pages#about'

  get 'static_pages/contact'

  get 'static_pages/index'
  
  # match '/send_mail', to: 'contact#send_mail', via: 'post'
  
 post 'static_pages/thank_you'

end
