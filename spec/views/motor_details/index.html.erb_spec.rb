require 'rails_helper'

RSpec.describe "motor_details/index", type: :view do
  before(:each) do
    assign(:motor_details, [
      MotorDetail.create!(
        :amperage => "9.99",
        :horsepower => "9.99",
        :voltage => "9.99",
        :weight => "9.99",
        :width => "9.99",
        :height => "9.99"
      ),
      MotorDetail.create!(
        :amperage => "9.99",
        :horsepower => "9.99",
        :voltage => "9.99",
        :weight => "9.99",
        :width => "9.99",
        :height => "9.99"
      )
    ])
  end

  it "renders a list of motor_details" do
    render
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
