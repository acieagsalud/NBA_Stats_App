Rails.application.routes.draw do
  get 'about/index'
  # get 'teams/show'
  # get 'teams/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: "about#index"

  resources "teams", only: %i[index show]
end
