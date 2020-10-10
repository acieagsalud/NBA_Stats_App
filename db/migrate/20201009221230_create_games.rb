class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.datetime :date
      t.integer :home_team_score
      t.integer :visitor_team_score
      t.integer :season
      t.references :home_team
      t.references :visitor_team

      t.timestamps
    end
  end
end
