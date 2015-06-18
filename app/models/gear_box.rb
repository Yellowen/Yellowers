class GearBox < ActiveRecord::Base

  belongs_to :gear
  belongs_to :site, class_name: 'SiteFramework::Site'
  belongs_to :user, class_name: 'Faalis::User'

  validates_associated :gear
  validates_associated :site
  validates_associated :user
end
