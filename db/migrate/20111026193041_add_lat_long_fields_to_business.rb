class AddLatLongFieldsToBusiness < ActiveRecord::Migration
  def change
    add_column :businesses, :latitude, :float #you can change the name, see wiki
    add_column :businesses, :longitude, :float #you can change the name, see wiki
    add_column :businesses, :gmaps, :boolean #not mandatory, see wiki
  end
end
