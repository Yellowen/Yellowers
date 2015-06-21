# == Schema Information
#
# Table name: gear_boxes
#
#  id         :integer          not null, primary key
#  gear_id    :integer
#  site_id    :integer
#  cost       :integer
#  settings   :json
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe GearBox, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
