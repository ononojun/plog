Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 root 'plogs#index'
 get 'plogs' => 'plogs#index'
 get 'plogs/new' => 'plogs#new'
 post  'plogs'      =>  'plogs#create'
 delete 'plogs/:id' => 'plogs#destroy'
  patch   'plogs/:id'  => 'plogs#update'
 get 'plogs/:id/edit' => 'plogs#edit'
 end
