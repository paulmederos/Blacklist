class AddPhoneNumberToBusiness < ActiveRecord::Migration
  def change
    add_column :businesses, :phone_number, :string
    add_column :businesses, :twitter, :string
  end
end
