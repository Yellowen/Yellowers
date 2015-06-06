class Gear < ActiveRecord::Base

  def self.mount
    puts "<<<<<<<<<<<<<<<<<<<", Rails.application.site?
  end
end
