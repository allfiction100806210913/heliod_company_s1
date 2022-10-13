Rails.application.routes.draw do
  devise_for :users
  root to: "tops#index"
  resources :librarys
  resources :decks
  resources :tops
  resources :opens
  resources :riffles
  resources :farrows
  
end
