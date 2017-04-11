require 'rails_helper'

RSpec.describe "motors/new", type: :view do
  before(:each) do
    assign(:motor, Motor.new(
      :motor_id => 1
    ))
  end

  it "renders new motor form" do
    render

    assert_select "form[action=?][method=?]", motors_path, "post" do

      assert_select "input#motor_motor_id[name=?]", "motor[motor_id]"
    end
  end
end
