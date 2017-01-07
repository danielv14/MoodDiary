class Mood < ApplicationRecord
  belongs_to :user

  # Validation
  validates :mood, presence: true
  validates :body, length: { in: 10..140 }
end
