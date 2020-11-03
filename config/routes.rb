Rails.application.routes.draw do
  get 'welcome/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #resources :users
  root 'welcome#index'

  get 	'users',			to: 'users#index',	as: 'users'
  post 	'users',			to: 'users#create'
  get 	'users/new', 		to: 'users#new',	as: 'new_user'
  get 	'users/:id/edit', 	to: 'users#edit',	as: 'edit_user'
  get 	'users/:id', 		to: 'users#show',	as: 'user'
  patch 'users/:id', 		to: 'users#update'
  put   'users/:id', 		to: 'users#update'
  delete'users/:id', 		to: 'users#destroy'

  get 'all_user', to: 'users#all_user'

end