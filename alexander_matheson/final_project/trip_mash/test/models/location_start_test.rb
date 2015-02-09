# == Schema Information
#
# Table name: location_starts
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#  region_id  :integer
#  latitude   :float
#  longitude  :float
#  address    :string(255)
#

require 'test_helper'

class LocationStartTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
