class Partner < ActiveRecord::Base
  attr_accessible :fname, :lname
  
  has_many :fellowships
  has_many :trips, :through => :fellowships
  
  def name
    fname + " " + lname
  end
end
