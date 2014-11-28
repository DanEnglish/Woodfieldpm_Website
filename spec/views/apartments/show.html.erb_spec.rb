require 'rails_helper'

RSpec.describe "apartments/show", :type => :view do
  before(:each) do
    @apartment = assign(:apartment, Apartment.create!(
      :apt_number => 1,
      :for_rent => false,
      :building_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/2/)
  end
end
