require 'rails_helper'

RSpec.describe "buildings/edit", :type => :view do
  before(:each) do
    @building = assign(:building, Building.create!(
      :name => "MyString",
      :address => "MyString"
    ))
  end

  it "renders the edit building form" do
    render

    assert_select "form[action=?][method=?]", building_path(@building), "post" do

      assert_select "input#building_name[name=?]", "building[name]"

      assert_select "input#building_address[name=?]", "building[address]"
    end
  end
end
