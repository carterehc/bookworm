Rails.application.routes.draw do
  
  resources :users
  
  get 'users/new'

  #resources :books, :authors do
    
    get 'books/index'

    get 'books/add'
    post 'books/create'
  
    get 'books/delete'

    get 'books/update'
    
    get 'authors/add'
    post 'authors/create'
  #end

  get 'welcome/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
