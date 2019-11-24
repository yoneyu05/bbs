Rails.application.routes.draw do
  get 'home/index'

  get 'home/authentication'

  devise_for :users
  resources :posts
  resources :topics
  root 'topics#index'
  get 'topics/show/:id' => 'topics#show', as: :topics_show
  post 'posts/create' => 'post#create', as: :post_create
  post 'topics/create' => 'topics#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
