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

class Bike < ActiveRecord::Base
  validates :title, presence: true
  has_many :comments
  belongs_to(:maintainer, foreign_key: :maintainer_id,
    class_name: "User")

end
  
