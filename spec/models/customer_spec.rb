require 'rails_helper'

describe Customer do

  it "should have valid factory" do
    FactoryGirl.build(:customer).should be_valid
  end

end  
