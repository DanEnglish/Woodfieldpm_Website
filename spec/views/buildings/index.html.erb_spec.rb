require 'rails_helper'

RSpec.describe "buildings/index", :type => :view do
  before(:each) do
    assign(:buildings, [
      Building.create!(
        :name => "Name",
        :address => "Address"
      ),
      Building.create!(
        :name => "Name",
        :address => "Address"
      )
    ])
  end

  it "renders a list of buildings" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
  end
end
