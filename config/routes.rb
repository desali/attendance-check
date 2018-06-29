Rails.application.routes.draw do

  get 'sessions/new'
  get '/login_st', to: 'sessions#new_st'
  post '/login_st', to: 'sessions#create_st'
  delete '/logout_st', to: 'sessions#destroy_st'

  get '/login_tch', to: 'sessions#new_tch'
  post '/login_tch', to: 'sessions#create_tch'
  delete '/logout_tch', to: 'sessions#destroy_tch'


end
