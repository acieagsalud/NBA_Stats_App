Rails.application.routes.draw do
  root to: "about#index"

  resources "teams", only: %i[index show]
  resources "players", only: %i[index show]
  resources "games", only: %i[index show]
  resources "seasons", only: %i[index show]
end
