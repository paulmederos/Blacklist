class Business < ActiveRecord::Base

  has_many :complaints
  validates_presence_of :name

  searchable do
    text :name
    text :street_address
    text :city
    string :state
    text :zip
  end
end
