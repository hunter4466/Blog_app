Rails.application.routes.draw do
  root to: 'users#index'
  get "/users/:user_id/posts", to: "posts#index", as: "user_posts"
  get "/users/:user_id/posts/:id", to: "posts#show", as: "user_post"
  get "/users", to: "users#index", as: "users"
  get "/users/:id", to: "users#show", as: "user"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
