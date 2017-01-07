Rails.application.routes.draw do
  get 'stats/', to: "stats#index"

  devise_for :users
  resources :moods
  root to: "moods#index"
end
