class CreateTeams < ActiveRecord::Migration[6.0]
  def change
    create_table :teams do |t|
      t.string :name
      t.string :abbreviation
      t.string :city
      t.string :conference
      t.string :division

      t.timestamps
    end
  end
end
