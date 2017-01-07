Rails.application.routes.draw do
  devise_for :users
  resources :moods
  root to: "moods#index"
end
