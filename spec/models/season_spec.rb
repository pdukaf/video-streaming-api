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
  pending "add some examples to (or delete) #{__FILE__}"
end
