# == Schema Information
#
# Table name: episodes
#
#  id         :bigint           not null, primary key
#  plot       :integer
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  season_id  :bigint           not null
#
# Indexes
#
#  index_episodes_on_season_id  (season_id)
#
# Foreign Keys
#
#  fk_rails_...  (season_id => seasons.id)
#
require 'rails_helper'

RSpec.describe Episode, type: :model do
  it { should belong_to(:season)}
	it { should validate_presence_of(:title) }
	it { should validate_presence_of(:plot) }
	it "is not valid without season_id" do 
		episode = Episode.new(season_id: nil)
		expect(episode).to_not be_valid
	end
end
