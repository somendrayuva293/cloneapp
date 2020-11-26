Rails.application.routes.draw do
  devise_for :users
  # get 'welcome/index'
  # root to: 'welcome#index'
  root to: 'posts#index'
  post '/users/:id/follow', to: "users#follow", as: "follow_user"
  post '/users/:id/unfollow', to: "users#unfollow", as: "unfollow_user"
  resources :posts do
    resources :likes
    resources :comments
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
