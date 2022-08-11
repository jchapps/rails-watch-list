Rails.application.routes.draw do
  # get 'bookmarks/new'
  # get 'bookmarks/show'
  # get 'lists/index'
  # get 'lists/create'
  # get 'lists/new'
  # get 'lists/show'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
    resources :lists, only: [:index, :create, :new, :show] do
      resources :bookmarks, only: [:new, :create]
    end
    resources :bookmarks, only: [:destroy]
end
