class AddImageToObjects < ActiveRecord::Migration
  def up
	change_table :objects_infos do |t| 
		t.string :avatar    
  	end
  end
  
  def down
  end

  #def change
  #  add_column :objects, :image, :string
  #end
end
