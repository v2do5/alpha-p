class ChangeDataTypeForMinPrice < ActiveRecord::Migration
  def self.up
    change_table :objects_infos do |t|
      t.change :obj_price, :integer
    end
  end

  def self.down
    change_table :objects_infos do |t|
      t.change :obj_price, :integer
    end
  end
end

