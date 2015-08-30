class WaitersMigration < ActiveRecord::Migration
  def up
    create_table :waiters do |t|
      t.string :name
      t.timestamps null: false
    end
  end

  def down
    drop_table :waiters
  end
end
