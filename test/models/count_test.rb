# == Schema Information
#
# Table name: counts
#
#  id                 :integer          not null, primary key
#  name               :string(255)
#  description        :string(255)
#  count              :integer
#  goal               :integer
#  created_at         :datetime
#  updated_at         :datetime
#  user_id            :integer
#  image_file_name    :string(255)
#  image_content_type :string(255)
#  image_file_size    :integer
#  image_updated_at   :datetime
#

require 'test_helper'

class CountTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
