class PartiesMigration < ActiveRecord::Migration
  def up
    create_table :parties do |t|
      t.references :table
      t.references :waiter
      t.integer :size
      t.boolean :has_paid, default: false
      t.timestamps null: false
    end
  end
  def down
    drop_table :parties
  end
end
