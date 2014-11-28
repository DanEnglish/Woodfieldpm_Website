require 'rails_helper'

RSpec.describe "buildings/new", :type => :view do
  before(:each) do
    assign(:building, Building.new(
      :name => "MyString",
      :address => "MyString"
    ))
  end

  it "renders new building form" do
    render

    assert_select "form[action=?][method=?]", buildings_path, "post" do

      assert_select "input#building_name[name=?]", "building[name]"

      assert_select "input#building_address[name=?]", "building[address]"
    end
  end
end
