# == Schema Information
#
# Table name: subscriptions
#
#  id         :integer          not null, primary key
#  email      :string(255)
#  plan_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Subscription < ActiveRecord::Base
  attr_accessible :email, :plan_id
  belongs_to :plan
  validates_presence_of :plan_id
  validates_presence_of :email
end
