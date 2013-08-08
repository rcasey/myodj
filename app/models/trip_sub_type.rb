class TripSubType < ActiveRecord::Base
  attr_accessible :subtype
  
  belongs_to :trip_types
  belongs_to :trips
end
