class GrapeVariety < ApplicationRecord
  validates :name, presence: true

  has_many :wine_grapes
  has_many :wines, through: :wine_grapes
end
