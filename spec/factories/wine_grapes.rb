FactoryBot.define do
  factory :wine_grapes do
    association :wine
    association :grape_variety
  end
end
