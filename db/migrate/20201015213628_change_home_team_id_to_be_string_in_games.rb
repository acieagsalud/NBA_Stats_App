class ChangeHomeTeamIdToBeStringInGames < ActiveRecord::Migration[6.0]
  def change
    change_column :games, :home_team_id, :string
  end
end
