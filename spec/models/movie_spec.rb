# == Schema Information
#
# Table name: movies
#
#  id         :bigint           not null, primary key
#  plot       :integer
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'rails_helper'

RSpec.describe Movie, type: :model do
	it { should validate_presence_of(:title) }
	it { should validate_presence_of(:plot) }
	it "is not valid without title" do 
		movie = Movie.new(plot: nil)
		expect(movie).to_not be_valid
	end
end
