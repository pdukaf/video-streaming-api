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
class Movie < ApplicationRecord
	validates_presence_of :title, :plot
	has_many :libraries, dependent: :destroy
end
