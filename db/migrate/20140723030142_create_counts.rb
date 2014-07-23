class CreateCounts < ActiveRecord::Migration
  def change
    create_table :counts do |t|
      t.string :name
      t.string :description
      t.integer :count
      t.integer :goal

      t.timestamps
    end
  end
end
