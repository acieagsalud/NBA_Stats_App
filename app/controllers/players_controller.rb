class PlayersController < ApplicationController
  def index
    @players = Player.includes(:team).order(:name)
  end

  def show
    @player = Player.includes(:team).find(params[:id])
  end
end
