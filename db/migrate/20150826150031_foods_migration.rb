class FoodsMigration < ActiveRecord::Migration
  def up
    create_table :foods do |t|
      t.string :name
      t.decimal :price, precision: 4, scale: 2
      t.string :course
      t.string :description, default: Faker::Company.bs
      t.boolean :on_menu, default: true
      t.timestamps null: false
    end
  end
  def down
    drop_table :foods
  end
end
