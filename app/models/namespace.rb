class Namespace < ActiveRecord::Base
  has_many :domains, class_name: 'SiteFramework::Domain'
end
