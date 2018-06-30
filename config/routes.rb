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

  get "/profile", to: "pages#profile"

  get "/courses/new", to: "courses#new"
  post "/courses/new", to: "courses#create"
  get "/courses/:id/check", to: "courses#check", as: "courses_check"
  get "/courses/:id/:gr", to: "courses#show", as: "course"
  post "/courses/:id/check", to: "courses#send", as: "courses_check_send"
  delete "/courses/:id", to: "courses#destroy", as: "courses_delete"

end
