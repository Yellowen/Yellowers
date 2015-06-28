# Extend SiteFramework::Site class to add extra functionality
SiteFramework::Site.class_eval do

  include Faalis::Concerns::Authorizable
  validates(:title, presence: true)
  validates(:site_category_id, presence: true)

  belongs_to :site_category
  belongs_to :owner, class_name: 'Faalis::User'

  validates_associated :site_category
  validates_associated :owner

  has_many :domains
  has_many :gear_boxes


  def before_dispatch(mapper)
    self.gear_boxes.each do |gear|
      gear.mount(mapper)
    end
  end
end
