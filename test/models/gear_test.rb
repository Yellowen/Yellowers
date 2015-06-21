# == Schema Information
#
# Table name: gears
#
#  id          :integer          not null, primary key
#  name        :string
#  engine      :string
#  url         :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class GearTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
