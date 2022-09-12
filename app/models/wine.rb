class Wine < ApplicationRecord
=begin
  create_table "wines", force: :cascade do |t|
    t.string "name", null: false
    t.string "producer", null: false
    t.integer "vintage", null: false
    t.string "label"
    t.string "image"
    t.integer "category", default: 0, null: false
    t.integer "color", default: 0, null: false
    t.integer "price"
    t.text "description"
    t.integer "sweetness", null: false
    t.integer "body", null: false
    t.integer "acidity", null: false
    t.integer "tannin", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "region_id"
    t.index ["region_id"], name: "index_wines_on_region_id"
  end
=end

  validates :name, presence: true
  validates :producer, presence: true
  validates :vintage, presence: true
  validates :category, presence: true
  validates :color, presence: true
  validates :sweetness, presence: true
  validates :body, presence: true
  validates :acidity, presence: true
  validates :tannin, presence: true

  has_many :wine_aromas, dependent: :destroy
  has_many :wine_grapes, dependent: :destroy
  has_many :grape_varieties, through: :wine_grapes
  has_many :aromas, through: :wine_aromas
  has_one :question, dependent: :destroy
  belongs_to :region
  enum category: { still: 0, sparkling: 1 }
  enum color: { red: 0, white: 1, rose: 2, other: 3 }
end
