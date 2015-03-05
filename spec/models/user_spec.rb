require 'rails_helper'
RSpec.describe User, :type => :model do

  describe "Invalid" do
  	it "nguyen viet thang" do
	  	U101 = User.create!(userID: "U1")
	  	U102 = User.new(userID: "U1")
		  expect(U102).not_to be_valid
  	end
  	it { expect(User.new(userID: "")).not_to be_valid}
  end
end
