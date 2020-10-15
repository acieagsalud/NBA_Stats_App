# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_10_15_223934) do

  create_table "games", force: :cascade do |t|
    t.datetime "date"
    t.integer "home_team_score"
    t.integer "visitor_team_score"
    t.integer "season"
    t.string "home_team_id"
    t.string "visitor_team_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["home_team_id"], name: "index_games_on_home_team_id"
    t.index ["visitor_team_id"], name: "index_games_on_visitor_team_id"
  end

  create_table "players", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "position"
    t.integer "height_feet"
    t.integer "height_inches"
    t.integer "weight"
    t.integer "team_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "photo"
    t.integer "api_id"
    t.string "fav_db_character"
    t.index ["team_id"], name: "index_players_on_team_id"
  end

  create_table "seasons", force: :cascade do |t|
    t.integer "games_played"
    t.integer "season"
    t.string "min"
    t.decimal "fgm"
    t.decimal "fga"
    t.decimal "fg3m"
    t.decimal "fg3a"
    t.decimal "ftm"
    t.decimal "fta"
    t.decimal "oreb"
    t.decimal "dreb"
    t.decimal "reb"
    t.decimal "ast"
    t.decimal "stl"
    t.decimal "blk"
    t.decimal "turnover"
    t.decimal "pf"
    t.decimal "pts"
    t.decimal "fg_pct"
    t.decimal "fg3_pct"
    t.decimal "ft_pct"
    t.integer "player_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["player_id"], name: "index_seasons_on_player_id"
  end

  create_table "teams", force: :cascade do |t|
    t.string "name"
    t.string "abbreviation"
    t.string "city"
    t.string "conference"
    t.string "division"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "players", "teams"
  add_foreign_key "seasons", "players"
end
