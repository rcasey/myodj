class Trip < ActiveRecord::Base
  attr_accessible :comment, :date, :title, :destination, :destination_id
  
  has_many :fellowships
  has_many :partners, :through => :fellowships
  
  belongs_to :destination
  has_one :trip_type
  has_one :trip_subtype, :through => :trip_type
  
end
