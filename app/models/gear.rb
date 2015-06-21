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

class Gear < ActiveRecord::Base
end
