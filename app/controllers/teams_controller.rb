class TeamsController < ApplicationController
  def show
    @teams = Team.all
  end

  def index
    @team = Team.find(params[:id])
  end
end
