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

# app/models/user.rb
class User < ActiveRecord::Base
  authenticates_with_sorcery!
  has_many :bikes, foreign_key: :maintainer_id

  validates :password, length: { minimum: 3 }, if: -> { new_record? || changes[:crypted_password] }
  validates :password, confirmation: true, if: -> { new_record? || changes[:crypted_password] }
  validates :password_confirmation, presence: true, if: -> { new_record? || changes[:crypted_password] }

  validates :email, uniqueness: true
end
