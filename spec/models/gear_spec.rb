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

require 'rails_helper'

RSpec.describe Gear, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
