Rails.application.routes.draw do
 

  authenticated :user, ->(user) { user.admin? } do    
    get 'admin', to: 'admin#index', as:'admin'
    get 'admin/users'
    get 'admin/uploads'
    get 'admin/show_user', to: 'admin#show_user'
    get 'admin/show_upload'
   

  end 
  

  devise_for :users, controllers: { sessions: 'user/sessions' }, path_names: { 
  sign_in: 'login',
  sign_out: 'logout',
  password: 'secret',
  confirmation: 'verification',
  unlock: 'unblock',
  registration: 'register'
}

  devise_scope :user do 
    get 'login', to: 'user/sessions#new'
    get 'register', to: 'user/registrations#new'
    get '/users/logout', to: 'user/sessions#destroy'
    post '/users/login', to: 'user/sessions#create'
  end
  
  # scope :admin do
  # end
  
  
  resources :users do 
    get "show_upload", to: "users#show_upload"
  end
  resources :uploads
  
  root 'main#index'
end
