require 'rails_helper'

RSpec.describe "apartments/edit", :type => :view do
  before(:each) do
    @apartment = assign(:apartment, Apartment.create!(
      :apt_number => 1,
      :for_rent => false,
      :building_id => 1
    ))
  end

  it "renders the edit apartment form" do
    render

    assert_select "form[action=?][method=?]", apartment_path(@apartment), "post" do

      assert_select "input#apartment_apt_number[name=?]", "apartment[apt_number]"

      assert_select "input#apartment_for_rent[name=?]", "apartment[for_rent]"

      assert_select "input#apartment_building_id[name=?]", "apartment[building_id]"
    end
  end
end
