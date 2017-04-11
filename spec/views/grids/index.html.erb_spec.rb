require 'rails_helper'

RSpec.describe "grids/index", type: :view do
  before(:each) do
    assign(:grids, [
      Grid.create!(
        :location_id => 2,
        :name => "Name"
      ),
      Grid.create!(
        :location_id => 2,
        :name => "Name"
      )
    ])
  end

  it "renders a list of grids" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
