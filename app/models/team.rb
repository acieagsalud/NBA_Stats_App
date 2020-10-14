class Team < ApplicationRecord
  has_many :players

  has_many :home_teams, :class_name => 'Game', :foreign_key => ':home_team_id'
  has_many :visitor_teams, :class_name => 'Game', :foreign_key => ':visitor_team_id'

  validates :name, :city, presence :true
end
