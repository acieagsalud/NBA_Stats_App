class Game < ApplicationRecord
  belongs_to :home_team, :class_name => 'Team'
  belongs_to :visitor_team, :class_name => 'Team'

  validates :home_team_score, numericality: { only_integer: true}
  validates :visitor_team_score, numericality: { only_integer: true}
  validates :season, numericality: { only_integer: true}
end
