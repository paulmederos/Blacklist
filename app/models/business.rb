class Business < ActiveRecord::Base

  has_many :complaints
  validates_presence_of :name
end
