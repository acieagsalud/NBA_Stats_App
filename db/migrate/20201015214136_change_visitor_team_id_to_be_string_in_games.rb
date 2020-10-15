class ChangeVisitorTeamIdToBeStringInGames < ActiveRecord::Migration[6.0]
  def change
    change_column :games, :visitor_team_id, :string
  end
end
