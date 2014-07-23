class AddAttachmentImageToCounts < ActiveRecord::Migration
  def self.up
    change_table :counts do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :counts, :image
  end
end
