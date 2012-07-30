class Removeusersandadmins < ActiveRecord::Migration
  def up
    drop_table :users
    drop_table :admins
  end

  def down
  end
end
