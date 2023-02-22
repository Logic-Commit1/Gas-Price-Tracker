Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'user/sessions' }, path_names: { sign_in: 'login',
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
  root 'main#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
