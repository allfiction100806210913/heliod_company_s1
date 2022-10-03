Rails.application.routes.draw do
  devise_for :users
  root to: "librarys#index"
  resources :librarys
end
