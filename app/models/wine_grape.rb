class WineGrape < ApplicationRecord
  belongs_to :wine
  belongs_to :grape_variety

  validates :wine_id, uniqueness: { scope: :grape_variety_id }
end
