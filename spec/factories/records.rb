FactoryGirl.define do
  factory :record do
    weight { Random.new.rand(100) }
    squat  { Random.new.rand(440) }
    benchpress { Random.new.rand(360) }
    deadlift { Random.new.rand(500) }
  end
end