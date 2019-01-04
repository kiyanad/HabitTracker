Rails.application.routes.draw do
  mount Dashing::Engine, at: Dashing.config.engine_path
  resources :user_activities
  resources :activities do
  collection do
    get 'completed';
    get 'active'
  end
end
  resources :users do
    collection do
      get 'habits'
  end
end

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
