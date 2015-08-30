class TablesMigration < ActiveRecord::Migration
  def up
    create_table :tables do |t|
      t.string :status, default: 'active'
      t.timestamps null: false
    end
  end

  def down
    drop_table :tables
  end
end
