class WineAroma < ApplicationRecord
  belongs_to :wine
  belongs_to :aroma

  validates :wine_id, uniqueness: { scope: :aroma_id }
end
