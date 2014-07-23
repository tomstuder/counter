class Count < ActiveRecord::Base

  belongs_to :user

  def pct
    goal / count
  end
end
