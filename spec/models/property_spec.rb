require 'rails_helper'

describe Property do 
  it "has a valid factory" do
    FactoryGirl.create(:property).should be_valid
  end
  it "is invalid without an address"
  it "is invalid without a description"
  it "is invalid without a price"
end
