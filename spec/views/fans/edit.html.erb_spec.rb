require 'rails_helper'

RSpec.describe "fans/edit", type: :view do
  before(:each) do
    @fan = assign(:fan, Fan.create!(
      :blade_id => 1,
      :motor_id => 1,
      :location_id => 1,
      :state => "MyString"
    ))
  end

  it "renders the edit fan form" do
    render

    assert_select "form[action=?][method=?]", fan_path(@fan), "post" do

      assert_select "input#fan_blade_id[name=?]", "fan[blade_id]"

      assert_select "input#fan_motor_id[name=?]", "fan[motor_id]"

      assert_select "input#fan_location_id[name=?]", "fan[location_id]"

      assert_select "input#fan_state[name=?]", "fan[state]"
    end
  end
end
