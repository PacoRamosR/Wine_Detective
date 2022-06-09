class Micropost < ApplicationRecord
  belongs_to :user
  belongs_to :wine

  default_scope -> { order(created_at: :desc) }

  validates :content, presence: true, length: { maximum: 56_465 }
end
