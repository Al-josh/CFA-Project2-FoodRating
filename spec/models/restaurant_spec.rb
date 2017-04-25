require 'rails_helper'

RSpec.describe Restaurant, type: :model do

  it "restaurant require a title" do
    restaurant = Restaurant.create(:name => nil, :address => nil)
    expect(restaurant).to_not be_valid
  end

  it "restaurant require a title" do
    restaurant = Restaurant.create(:name => "restaurant", :address => "sydney")
    expect(restaurant).to be_valid
  end


end
