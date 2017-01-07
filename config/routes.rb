Rails.application.routes.draw do
  get 'stats/', to: "stats#index"

  devise_for :users
  resources :moods, except: ['index']
  root to: "moods#new"
end
