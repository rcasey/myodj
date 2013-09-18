class TripType < ActiveRecord::Base
  attr_accessible :triptype
  
  has_many :trip_sub_types
  
end
