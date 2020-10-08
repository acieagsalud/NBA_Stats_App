# rails db:seed

Player.destroy_all
Team.destroy_all

team = Team.create(name: 'Raptors',
                   abbreviation: 'TOR',
                   city: 'Toronto',
                   conference: 'Eastern',
                   division: 'Atlantic')

team.players.create(first_name: 'Fred',
                    last_name: 'Vanvleet',
                    position: "G",
                    height_feet: 6,
                    height_inches: 0,
                    weight: 195)

puts Player.first.inspect
puts Player.first.team.inspect