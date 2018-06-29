Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "/signup", to: "students#new"
  post "/signup", to: "students#create"

  get "/edu/signup", to: "teachers#new"
  post "/edu/signup", to: "teachers#create"
end
