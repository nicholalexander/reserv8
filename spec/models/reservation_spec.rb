require 'rails_helper'

# RSpec.describe Reservation, :type => :model do
  
#   it "has none to begin with" do
#     expect(Reservation.count).to eq 0
#   end

# end

describe Reservation do
  
  it "should have valid factory" do
    FactoryGirl.build(:reservation).should be_valid
  end
  
end
