require 'rails_helper'
RSpec.describe User, :type => :model do
	let(:user) { User.create(userID: 'U1001', color: 'white') }

	subject { user }
      ## Test fields of valid user
    it { should be_valid }
	##Test cases that make user invalid
	it 'user fields' do
    	['userID', 'color', 'phone'].each do |key|
      		expect(user).to respond_to(key)
    	end
	end
	describe "invalid" do
		it 'userID nil' do
			user.userID = ""
			expect(user).not_to be_valid
		end
		it 'userID is not presence' do
			user.userID = ""
			expect(user).not_to be_valid
		end
		#color is blue
		it 'color is blue' do
			user.color = "blue"
			expect(user).not_to be_valid
		end
		#color is not presence
		it 'color is not presence' do
			user.color = ''
			expect(user).not_to be_valid
		end
		#userID is not uniqueness
		it "userID is not uniqueness" do
	  	U102 = User.new(userID: "U1001")
		  expect(U102).not_to be_valid
  	end
	end
end
