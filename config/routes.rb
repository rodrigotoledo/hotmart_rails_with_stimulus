Rails.application.routes.draw do
  resources :posts do
    member do
      get 'completed', to: 'posts#completed'
    end
  end
  root 'posts#index'
end
