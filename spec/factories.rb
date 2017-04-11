FactoryGirl.define do
  factory :blade do
    fan
    length 30.0
    width  10.0
  end

  factory :motor do
    fan
    state  'off'
  end

  factory :motor_detail do
    motor
    amperage 0.0
    horsepower 0.0
    voltage 0.0
    weight 0.0
    height 0.0
  end

  factory :fan do
    state 'off'
    
    after(:create) do |fan, evaluator|
      create_list(:blade, 1, fan: fan)
      create_list(:motor, 1, fan: fan)
      create_list(:location, 1, fan: fan)
    end
  end

  factory :location do
    fan
    grid
    latitude 0.0
    longitude 0.0
  end

  factory :grid do
    sequence(:name) { |n| "grid #{n}" }

    after(:create) do |grid, evaluator|
      grid.locations ||= create_list(:location, 3, grid: grid)
    end
  end

  factory :ventilation_log do
    fan
    grid
    start_time { Time.new }
    end_time   { Time.new + 1.hour }
  end

end
