# rails db:seed

require 'open-uri'
require 'rest-client'
require 'json'
require 'net/http'

Player.destroy_all
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
                              weight: player['weight_pounds'])
  puts "Created player: #{player['first_name']} #{player['last_name']} #{current_team['name']}"
  sleep(1.5)
end

# Team.first.players.create(first_name: 'Fred',
#                     last_name: 'Vanvleet',
#                     position: "G",
#                     height_feet: 6,
#                     height_inches: 0,
#                     weight: 195)

# team = Team.create(name: 'Raptors',
#                    abbreviation: 'TOR',
#                    city: 'Toronto',
#                    conference: 'Eastern',
#                    division: 'Atlantic')

# team.players.create(first_name: 'Fred',
#                     last_name: 'Vanvleet',
#                     position: "G",
#                     height_feet: 6,
#                     height_inches: 0,
#                     weight: 195)

# puts Player.first.inspect
# puts Player.first.team.inspect