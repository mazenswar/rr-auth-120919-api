Rails.application.routes.draw do
  resources :dogs
  resources :users
  post '/login', to: 'auth#login'
  get '/auth', to: 'auth#persist'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
