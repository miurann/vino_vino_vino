class Aroma < ApplicationRecord
  validates :name, presence: true
  
  has_many: wine_aromas
  has_many: wines, through: :wine_aromas
end
