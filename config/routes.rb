Rails.application.routes.draw do
 devise_for :users, controllers: {registrations: "registrations"}
 resources :jobs
 root 'jobs#index'
 resources :stats
end
