# == Schema Information
#
# Table name: users
#
#  id         :bigint           not null, primary key
#  email      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'rails_helper'

RSpec.describe User, type: :model do
	it {should validate_presence_of(:email)}
	it {should have_one(:library)}
	it 'should not be valid' do
		user = User.new(email: nil)
		expect(user).to_not be_valid
	end
end
