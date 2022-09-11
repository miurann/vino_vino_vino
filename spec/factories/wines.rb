FactoryBot.define do
  factory :wine do
    association :region
    name { "バローロ ラヴェーラ" }
    producer { "ELVIO COGNO" }
    vintage { 2017 }
    category { 0 }
    color { 0 }
    sweetness { 1 }
    body { 3 }
    acidity { 3 }
    tannin { 3 }
  end
end
