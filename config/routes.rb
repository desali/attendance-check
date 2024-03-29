Rails.application.routes.draw do
  root 'pages#index'

  get '/login', to: 'sessions#new_st'
  post '/login', to: 'sessions#create_st'
  delete '/logout', to: 'sessions#destroy'

  get '/edu/login', to: 'sessions#new_tch'
  post '/edu/login', to: 'sessions#create_tch'
  delete '/edu/logout', to: 'sessions#destroy'

  get "/signup", to: "students#new"
  post "/signup", to: "students#create"

  post "/edu/signup", to: "teachers#create"
  get "/edu/signup", to: "teachers#new"

  get "/profile", to: "pages#profile"

  get "/courses/new", to: "courses#new"
  post "/courses/new", to: "courses#create"

  get "/courses/:id/:gr/check", to: "courses#check", as: "courses_check"

  get "/courses/:id/:gr", to: "courses#show", as: "course"
  delete "/courses/:id", to: "courses#destroy", as: "courses_delete"

  post "/group/join", to: "students#join", as: "group_join"
  delete "/group/:id/leave", to: "students#leave", as: "group_leave"

  get "/get_courses", to: "pages#get_courses"
  post "/profile/confirm/:nid", to: "pages#confirm", as: "confirm"

end
