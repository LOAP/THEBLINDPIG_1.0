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

require 'test_helper'

class SubscriptionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
