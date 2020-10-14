class CreateSeasons < ActiveRecord::Migration[6.0]
  def change
    create_table :seasons do |t|
      t.integer :games_played
      t.integer :season
      t.string :min
      t.decimal :fgm
      t.decimal :fga
      t.decimal :fg3m
      t.decimal :fg3a
      t.decimal :ftm
      t.decimal :fta
      t.decimal :oreb
      t.decimal :dreb
      t.decimal :reb
      t.decimal :ast
      t.decimal :stl
      t.decimal :blk
      t.decimal :turnover
      t.decimal :pf
      t.decimal :pts
      t.decimal :fg_pct
      t.decimal :fg3_pct
      t.decimal :ft_pct
      t.references :player, null: false, foreign_key: true

      t.timestamps
    end
  end
end
