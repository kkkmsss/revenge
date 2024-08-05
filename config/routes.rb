Rails.application.routes.draw do
  devise_for :users
  get 'cleans/sindan' => 'cleans#sindan'
  get 'users/show/iine/:id', to: 'users#iine'
  resources :users, only: [:show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :cleans do
    resources :likes, only: [:create, :destroy]
    resources :comments, only: [:create]
  end
  root 'cleans#top'
end
