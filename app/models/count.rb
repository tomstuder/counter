class Count < ActiveRecord::Base

  belongs_to :user

  def pct
    count.to_f / goal.to_f * 100
  end

  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  validates_attachment :image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }

end
