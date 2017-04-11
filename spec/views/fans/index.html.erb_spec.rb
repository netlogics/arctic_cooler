require 'rails_helper'

RSpec.describe "fans/index", type: :view do
  before(:each) do
    assign(:fans, [
      Fan.create!(
        :blade_id => 2,
        :motor_id => 3,
        :location_id => 4,
        :state => "State"
      ),
      Fan.create!(
        :blade_id => 2,
        :motor_id => 3,
        :location_id => 4,
        :state => "State"
      )
    ])
  end

  it "renders a list of fans" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
  end
end
