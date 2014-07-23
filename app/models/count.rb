class Count < ActiveRecord::Base

  belongs_to :user

  def pct
    goal / count
  end
  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
end
