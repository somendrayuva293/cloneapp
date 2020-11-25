Rails.application.routes.draw do
  devise_for :users
  # get 'welcome/index'
  # root to: 'welcome#index'
  root to: 'posts#index'
  resources :posts do
    resources :likes
    resources :comments
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
