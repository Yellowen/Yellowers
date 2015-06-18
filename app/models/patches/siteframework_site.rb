# Extend SiteFramework::Site class to add extra functionality
SiteFramework::Site.class_eval do

  include Faalis::Concerns::Authorizable

  belongs_to :site_category
  belongs_to :owner, class_name: 'Faalis::User'

  validates_associated :site_category
  validates_associated :owner

  has_many :domains
end
