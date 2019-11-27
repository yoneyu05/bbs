Rails.application.routes.draw do
  resources :delrequests
  devise_for :users
    devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  resources :posts
  
  resources :topics
  root 'topics#index'
  get 'topics/show/:id' => 'topics#show', as: :topics_show
end
