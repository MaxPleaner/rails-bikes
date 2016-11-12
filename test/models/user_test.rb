# == Schema Information
#
# Table name: users
#
#  id                                                              :integer          not null, primary key
#  email                                                           :string           not null
#  crypted_password                                                :string           not null
#  salt                                                            :string           not null
#  username                                                        :string           not null
#  created_at                                                      :datetime
#  updated_at                                                      :datetime
#  profile                                                         :text
#  #<ActiveRecord::ConnectionAdapters::PostgreSQL::TableDefinition :text
#

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
