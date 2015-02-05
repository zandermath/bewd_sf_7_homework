# == Schema Information
#
# Table name: activities
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  pic        :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Activity < ActiveRecord::Base
	has_many :trips
end
