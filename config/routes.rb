Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
get '/top' => 'homes#top'
get '/books' => 'bookers#index'
get '/books/:id' => 'bookers#show',as: 'book'
post '/books' => 'bookers#create'
get '/books/:id/edit' => 'bookers#edit', as: 'edit_book'
patch '/books/:id' => 'bookers#update', as: 'update_book'
delete 'books/:id' => 'bookers#destroy', as: 'destroy_book'


end
