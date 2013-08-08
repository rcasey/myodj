class Trip < ActiveRecord::Base
  attr_accessible :comment, :date, :title
  
  has_many :fellowships
  has_many :partners, :through => :fellowships
  
  has_many :destinations
  has_one :trip_type
  has_one :trip_subtype, :through => :trip_type
  
end
