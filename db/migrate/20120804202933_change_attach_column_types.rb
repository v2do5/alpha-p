class ChangeAttachColumnTypes < ActiveRecord::Migration
  def up
  	change_table :attachments do |t|
  		t.change :file, :text
  		t.change :attachable_type, :text
  	end
  end

  def down
  	change_table :attachments do |t|
  		t.change :file, :string
  		t.change :attachable_type, :string
  	end
  end
end
