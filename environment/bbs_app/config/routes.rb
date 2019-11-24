Rails.application.routes.draw do
  get 'home/index'
  get 'home/authentication'

  resources :posts
  
  resources :topics
  root 'topics#index'
  get 'topics/show/:id' => 'topics#show', as: :topics_show
end
