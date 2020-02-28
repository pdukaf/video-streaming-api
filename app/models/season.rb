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

end
