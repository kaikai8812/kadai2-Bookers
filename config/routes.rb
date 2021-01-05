Rails.application.routes.draw do
  root :to => 'books#top'
  get 'books/index' => 'books#index', as: 'books'
  get 'books/:id' => 'books#show', as: 'book'
  get 'books/edit/:id' => 'books#edit', as: 'book_edit'
  post 'books/index' => 'books#create'
  patch 'books/:id' => 'books#update'
  delete 'books/:id' => 'books#destroy', as: 'book_destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
