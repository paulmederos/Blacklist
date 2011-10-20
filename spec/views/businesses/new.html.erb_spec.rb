require 'spec_helper'

describe "businesses/new.html.erb" do
  before(:each) do
    assign(:business, stub_model(Business,
      :name => "MyString",
      :street_address => "MyString",
      :city => "MyString",
      :state => "MyString",
      :zip => "MyString"
    ).as_new_record)
  end

  it "renders new business form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => businesses_path, :method => "post" do
      assert_select "input#business_name", :name => "business[name]"
      assert_select "input#business_street_address", :name => "business[street_address]"
      assert_select "input#business_city", :name => "business[city]"
      assert_select "input#business_state", :name => "business[state]"
      assert_select "input#business_zip", :name => "business[zip]"
    end
  end
end
