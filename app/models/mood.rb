class Mood < ApplicationRecord
  belongs_to :user

  # Validation
  validates :mood, presence: true

  # scopes
  scope :love,    -> { where(mood: "love") }
  scope :happy,   -> { where(mood: "happy") }
  scope :neutral, -> { where(mood: "neutral") }
  scope :sad,     -> { where(mood: "sad") }



end
