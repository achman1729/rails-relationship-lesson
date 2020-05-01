Rails.application.routes.draw do

  get '/mylist', to: 'book_list_items#index', as: 'book_list_items'

  devise_for :users

  # enquiry routes
  get 'enquiries', to: 'enquiries#index'
  get 'enquiries/new'
  post 'enquiries', to:'enquiries#create'
  
  # books routes
  root 'books#index'
  post 'books', to: 'books#create'
  get 'books/new'
  get 'books/:id/edit', to: 'books#edit', as: 'edit_book'
  get 'books/:id', to: 'books#show', as: 'book'
  patch 'books/:id', to: 'books#update'
  put 'books/:id', to: 'books#update'

end
