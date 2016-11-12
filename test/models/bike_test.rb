# == Schema Information
#
# Table name: bikes
#
#  id          :integer          not null, primary key
#  title       :string
#  price       :string
#  description :text
#  status      :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class BikeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
