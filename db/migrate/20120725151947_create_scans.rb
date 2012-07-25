class CreateScans < ActiveRecord::Migration
  def change
    create_table :scans do |t|
      t.text :keywords
      t.text :category
      t.text :minimum_price
      t.text :maximum_price

      t.timestamps
    end
  end
end
