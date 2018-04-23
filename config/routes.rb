Rails.application.routes.draw do

  get 'sessions/new'

  resources :books
  resources :users
  root 'static_pages#home'
  get '/signup', to: 'users#new'
  
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

    
  #  get 'books/index'

  #get 'books/add'
   # post 'books/create'
 
 #   get 'books/delete'

#    get 'books/update'
    
 #   get 'authors/add'
  #  post 'authors/create'
  #end

#  get 'welcome/index'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
