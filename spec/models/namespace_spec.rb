# == Schema Information
#
# Table name: namespaces
#
#  id         :integer          not null, primary key
#  name       :string
#  owner_id   :integer
#  locked     :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Namespace, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
