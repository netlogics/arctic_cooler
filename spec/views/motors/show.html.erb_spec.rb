require 'rails_helper'

RSpec.describe "motors/show", type: :view do
  before(:each) do
    @motor = assign(:motor, Motor.create!(
      :motor_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
  end
end
