# == Schema Information
#
# Table name: purchases
#
#  id            :bigint           not null, primary key
#  price         :decimal(3, 2)    default("2.99")
#  video_quality :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  movie_id      :bigint           not null
#  season_id     :bigint           not null
#
# Indexes
#
#  index_purchases_on_movie_id   (movie_id)
#  index_purchases_on_season_id  (season_id)
#
# Foreign Keys
#
#  fk_rails_...  (movie_id => movies.id)
#  fk_rails_...  (season_id => seasons.id)
#
class Purchase < ApplicationRecord
  belongs_to :movie
  belongs_to :season
  validates_presence_of :video_quality
end
