# == Schema Information
#
# Table name: libraries
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  movie_id   :bigint           not null
#  season_id  :bigint           not null
#  user_id    :bigint           not null
#
# Indexes
#
#  index_libraries_on_movie_id   (movie_id)
#  index_libraries_on_season_id  (season_id)
#  index_libraries_on_user_id    (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (movie_id => movies.id)
#  fk_rails_...  (season_id => seasons.id)
#  fk_rails_...  (user_id => users.id)
#
require 'rails_helper'

RSpec.describe Library, type: :model do
	it {should belong_to(:movie)}
	it {should belong_to(:season)}
	it {should belong_to(:user)}
end
