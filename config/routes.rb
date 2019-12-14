Rails.application.routes.draw do
  get 'users/home' => 'users#home'
  get 'users/login' => 'users#login'
  get 'users/logout' => "users#logout"
  post 'users/login' => 'users#check'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
