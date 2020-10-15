Rails.application.routes.draw do
  # get 'seasons/index'
  # get 'seasons/show'
  # get 'games/index'
  # get 'games/show'
  # get 'players/index'
  # get 'players/show'
  # get 'about/index'
  # get 'teams/show'
  # get 'teams/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: "about#index"

  resources "teams", only: %i[index show]
  resources "players", only: %i[index show]
  resources "games", only: %i[index show]
  resources "seasons", only: %i[index show]
end
