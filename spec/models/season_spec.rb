# == Schema Information
#
# Table name: seasons
#
#  id         :bigint           not null, primary key
#  number     :integer
#  plot       :integer
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'rails_helper'

RSpec.describe Season, type: :model do
	it { should have_many(:episodes).dependent(:destroy) }
	it { should validate_presence_of(:title) }
	it { should validate_presence_of(:plot) }
	it {should validate_presence_of (:number)}
	it "is not valid without title" do 
		season = Season.new(title: nil)
		expect(season).to_not be_valid
	end
end
