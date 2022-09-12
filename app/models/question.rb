class Question < ApplicationRecord
  belongs_to :wine
  has_many: choices, dependent: :destroy

  validates :content, presence: true
  validates :description, presence: true
end
