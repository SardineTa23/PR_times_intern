Rails.application.routes.draw do
  devise_for :users
  resources :posts, only: [:create, :destroy, :show, :index] do
    resource :favorites, only: [:create, :destroy]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
