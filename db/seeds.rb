# rails db:seed

require 'rest-client'
require 'json'

Player.destroy_all
# Game.destroy_all
# Team.destroy_all

# Fetch and decode JSON resources from NBA API
def api_fetch(url)
  JSON.parse(RestClient.get url)
end

def team_url(id)
  "https://www.balldontlie.io/api/v1/teams/#{id}"
end

def player_url(id)
  "https://www.balldontlie.io/api/v1/players/#{id}"
end

def game_url(id)
  "https://www.balldontlie.io/api/v1/games/#{id}"
end

# teams = 1..30
# teams.each do |team_id|
#   team = api_fetch(team_url(team_id))
#   Team.create(name: team['name'],
#               abbreviation: team['abbreviation'],
#               city: team['city'],
#               conference: team['conference'],
#               division: team['division'])
#   puts "Created team: #{team['city']} #{team['name']}"
# end

players = 1..170
players.each do |player_id|
  player = api_fetch(player_url(player_id))
  current_team = Team.where(:name => player['team']['name']).first
  current_team.players.create(first_name: player['first_name'],
                              last_name: player['last_name'],
                              position: player['position'],
                              height_feet: player['height_feet'],
                              height_inches: player['height_inches'],
                              weight: player['weight_pounds'],
                              photo: "https://nba-players.herokuapp.com/players/#{player['first_name']}/#{player['last_name']}",
                              api_id: player_id)
  puts "Created player: #{player['first_name']} #{player['last_name']} #{current_team['name']}"
  sleep(1)
end

# games = 1..30
# games.each do |game_id|
#   game = api_fetch(game_url(game_id))
#   home_team = Team.where(:name => game['home_team']['name']).first
#   visitor_team = Team.where(:name => game['visitor_team']['name']).first
#   Game.create(date: game['date'],
#               home_team_score: game['home_team_score'],
#               visitor_team_score: game['visitor_team_score'],
#               season: game['season'],
#               home_team_id: home_team.id,
#               visitor_team_id: visitor_team.id)
# end
