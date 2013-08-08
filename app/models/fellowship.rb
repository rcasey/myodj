class Fellowship < ActiveRecord::Base
  attr_accessible :partner_id, :trip_id
  
  belongs_to :partner
  belongs_to :trip
end
