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

class Namespace < ActiveRecord::Base
  has_many :domains, class_name: 'SiteFramework::Domain'
end
