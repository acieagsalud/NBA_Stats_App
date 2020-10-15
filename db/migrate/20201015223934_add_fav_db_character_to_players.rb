class AddFavDbCharacterToPlayers < ActiveRecord::Migration[6.0]
  def change
    add_column :players, :fav_db_character, :string
  end
end
