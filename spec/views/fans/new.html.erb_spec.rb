require 'rails_helper'

RSpec.describe "fans/new", type: :view do
  before(:each) do
    assign(:fan, Fan.new(
      :blade_id => 1,
      :motor_id => 1,
      :location_id => 1,
      :state => "MyString"
    ))
  end

  it "renders new fan form" do
    render

    assert_select "form[action=?][method=?]", fans_path, "post" do

      assert_select "input#fan_blade_id[name=?]", "fan[blade_id]"

      assert_select "input#fan_motor_id[name=?]", "fan[motor_id]"

      assert_select "input#fan_location_id[name=?]", "fan[location_id]"

      assert_select "input#fan_state[name=?]", "fan[state]"
    end
  end
end
