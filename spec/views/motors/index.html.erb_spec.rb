require 'rails_helper'

RSpec.describe "motors/index", type: :view do
  before(:each) do
    assign(:motors, [
      Motor.create!(
        :motor_id => 2
      ),
      Motor.create!(
        :motor_id => 2
      )
    ])
  end

  it "renders a list of motors" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
