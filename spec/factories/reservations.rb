require 'faker'

FactoryGirl.define do 
  factory :reservation do |f|
    f.start_time Time.now
    f.date Time.now
    f.price 0.00
  end
end

