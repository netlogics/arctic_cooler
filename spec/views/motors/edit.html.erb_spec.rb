require 'rails_helper'

RSpec.describe "motors/edit", type: :view do
  before(:each) do
    @motor = assign(:motor, Motor.create!(
      :motor_id => 1
    ))
  end

  it "renders the edit motor form" do
    render

    assert_select "form[action=?][method=?]", motor_path(@motor), "post" do

      assert_select "input#motor_motor_id[name=?]", "motor[motor_id]"
    end
  end
end
