Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'homes#top'
  get "home/about" =>"homes#about", as: "about"
  patch 'books/:id' => 'books#update', as: 'update_book'
  patch 'users/:id' => 'users#update', as: 'update_user'
  resources :books
  resources :users

  resources :post_images do
    resource :favorite
    resources :post_comments
  end

end
