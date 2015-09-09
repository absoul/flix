Rails.application.routes.draw do
  resources :genres

  resource :session
  resources :users
  root "movies#index"
  resources :movies do
    resources :reviews
    resources :favorites
  end

  get 'signup' => 'users#new'


end
