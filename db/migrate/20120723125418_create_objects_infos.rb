class CreateObjectsInfos < ActiveRecord::Migration
  def change
    create_table :objects_infos do |t|
      t.text :obj_name
      t.text :obj_type
      t.text :obj_adress
      t.text :obj_info
      t.text :obj_room_num
      t.text :obj_area_square
      t.text :obj_price

      t.timestamps
    end
  end
end
