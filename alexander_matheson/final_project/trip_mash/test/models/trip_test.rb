# == Schema Information
#
# Table name: trips
#
#  id                :integer          not null, primary key
#  description       :text
#  has_car           :boolean
#  spots             :integer
#  cost              :decimal(, )
#  date_start        :date
#  date_end          :date
#  pick_up           :boolean
#  created_at        :datetime
#  updated_at        :datetime
#  location_start_id :integer
#  location_end_id   :integer
#  activity_id       :integer
#  region_id         :integer
#  user_id           :integer
#  address           :string(255)
#  latitude          :float
#  longitude         :float
#  image_id          :string(255)
#

require 'test_helper'

class TripTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
