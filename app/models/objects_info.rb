class ObjectsInfo < ActiveRecord::Base
  attr_accessible :obj_adress, :obj_area_square, :obj_info, :obj_name, :obj_price, :obj_room_num, :obj_type, :attachments_attributes
  
  has_many :attachments, :as => :attachable

  accepts_nested_attributes_for :attachments
end


