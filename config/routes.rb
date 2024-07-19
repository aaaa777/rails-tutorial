Rails.application.routes.draw do
  # get 'foo/bar'
  # get 'foo/baz'
  # resources :microposts
  resources :users
  root "static_pages#home"
  get  "/help",    to: "static_pages#help"
  get  "/about",   to: "static_pages#about"
  get  "/contact", to: "static_pages#contact"
  get  "/signup",  to: "users#new"
end
