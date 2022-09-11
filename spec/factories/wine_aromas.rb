FactoryBot.define do
  factory :wine_aromas do
    association :wine
    association :aroma
  end
end
