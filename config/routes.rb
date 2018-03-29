Rails.application.routes.draw do
  get 'books/index'

  get 'books/add'

  get 'books/delete'

  get 'books/update'

  get 'welcome/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
