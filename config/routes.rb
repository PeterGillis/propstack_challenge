Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :spaceships
  resources :missions
  resources :crew_members
  # resources :model, only: [:index]
end
