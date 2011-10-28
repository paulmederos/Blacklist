class Business < ActiveRecord::Base
  acts_as_gmappable


  has_many :complaints
  validates_presence_of :name

  searchable do
    text :name
    text :street_address
    text :city
    string :state
    text :zip
  end


  def gmaps4rails_address
    "#{self.street_address}, #{self.city}, #{self.state}, USA"
  end

   def gmaps4rails_title
      name
    end
end
