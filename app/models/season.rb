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
class Season < ApplicationRecord
	has_many :episodes, dependent: :destroy
	has_many :libraries, dependent: :destroy
	validates_presence_of :title, :plot, :number
end
