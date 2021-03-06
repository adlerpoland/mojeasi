Rails.application.routes.draw do
  devise_for :users
  get 'pages/info'

  resources :photos do
      member do
      post '/like' => 'photos#like'
      delete '/unlike' => 'photos#unlike'
      end
    end
  resources :photos do
      resources :comments
  end
  root :to => redirect('/photos')
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
