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

class GearBox < ActiveRecord::Base

  belongs_to :gear
  belongs_to :site, class_name: 'SiteFramework::Site'
  belongs_to :user, class_name: 'Faalis::User'

  validates_associated :gear
  validates_associated :site
  validates_associated :user

  def mount(mapper)
    mapper.mount gear.engine.constantize => gear.url
  end
end
