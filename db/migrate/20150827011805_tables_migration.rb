class TablesMigration < ActiveRecord::Migration
  def up
    create_table :tables do |t|
      t.timestamps null: false
    end
  end

  def down
    drop_table :tables
  end
end
