class Player < ApplicationRecord
  belongs_to :team
  has_many :seasons

  validates :first_name, :last_name, presence: true
  validates :weight, numericality: { only_integer: true}
  validates :height_feet, numericality: { only_integer: true}
  validates :height_inches, numericality: { only_integer: true}
end
