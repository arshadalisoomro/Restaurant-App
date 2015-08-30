class PartyOrdersMigration < ActiveRecord::Migration
  def up
    create_table :party_orders do |t|
      t.references :party
      t.references :food
      t.boolean :cooked, default: false
      t.boolean :has_paid, default: false
      t.timestamps null: false
    end
  end
  def down
    drop_table :party_orders
  end
end
