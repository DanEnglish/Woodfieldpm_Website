require 'rails_helper'

RSpec.describe "apartments/index", :type => :view do
  before(:each) do
    assign(:apartments, [
      Apartment.create!(
        :apt_number => 1,
        :for_rent => false,
        :building_id => 2
      ),
      Apartment.create!(
        :apt_number => 1,
        :for_rent => false,
        :building_id => 2
      )
    ])
  end

  it "renders a list of apartments" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
