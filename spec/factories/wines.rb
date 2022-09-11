FactoryBot.define do
  factory :wine do
    name { "バローロ ラヴェーラ" }
    producer { "ELVIO COGNO" }
    vintage { 2017 }
    type { 0 }
    color { 0 }
    sweetness { 1 }
    body { 3 }
    acidity { 3 }
    tannin { 3 }
    region_id { 2 }
  end
end
