Rails.application.routes.draw do
  root 'pages#index'

  get '/login', to: 'sessions#new_st'
  post '/login', to: 'sessions#create_st'
  delete '/logout', to: 'sessions#destroy_st'

  get '/edu/login', to: 'sessions#new_tch'
  post '/edu/login', to: 'sessions#create_tch'
  delete '/edu/logout', to: 'sessions#destroy_tch'

  get "/signup", to: "students#new"
  post "/signup", to: "students#create"

  post "/edu/signup", to: "teachers#create"
  get "/edu/signup", to: "teachers#new"

end
