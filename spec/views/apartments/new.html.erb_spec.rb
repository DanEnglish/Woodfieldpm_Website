require 'rails_helper'

RSpec.describe "apartments/new", :type => :view do
  before(:each) do
    assign(:apartment, Apartment.new(
      :apt_number => 1,
      :for_rent => false,
      :building_id => 1
    ))
  end

  it "renders new apartment form" do
    render

    assert_select "form[action=?][method=?]", apartments_path, "post" do

      assert_select "input#apartment_apt_number[name=?]", "apartment[apt_number]"

      assert_select "input#apartment_for_rent[name=?]", "apartment[for_rent]"

      assert_select "input#apartment_building_id[name=?]", "apartment[building_id]"
    end
  end
end
