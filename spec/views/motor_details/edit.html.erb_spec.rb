require 'rails_helper'

RSpec.describe "motor_details/edit", type: :view do
  before(:each) do
    @motor_detail = assign(:motor_detail, MotorDetail.create!(
      :amperage => "9.99",
      :horsepower => "9.99",
      :voltage => "9.99",
      :weight => "9.99",
      :width => "9.99",
      :height => "9.99"
    ))
  end

  it "renders the edit motor_detail form" do
    render

    assert_select "form[action=?][method=?]", motor_detail_path(@motor_detail), "post" do

      assert_select "input#motor_detail_amperage[name=?]", "motor_detail[amperage]"

      assert_select "input#motor_detail_horsepower[name=?]", "motor_detail[horsepower]"

      assert_select "input#motor_detail_voltage[name=?]", "motor_detail[voltage]"

      assert_select "input#motor_detail_weight[name=?]", "motor_detail[weight]"

      assert_select "input#motor_detail_width[name=?]", "motor_detail[width]"

      assert_select "input#motor_detail_height[name=?]", "motor_detail[height]"
    end
  end
end
