Rails.application.routes.draw do
  root "articles#index"

  devise_for :users, controllers: {
   sessions: 'users/sessions'
  }

  resources :articles do
    resources :likes
  end

  resources :articles do
    resources :comments
  end
end
