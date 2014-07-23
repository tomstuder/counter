class AddUserIdToCount < ActiveRecord::Migration
  def change
    add_column :counts, :user_id, :integer
  end
end
