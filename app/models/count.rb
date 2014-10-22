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

class Count < ActiveRecord::Base

  belongs_to :user

  def pct
    count.to_f / goal.to_f * 100
  end

  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  validates_attachment :image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }

end
