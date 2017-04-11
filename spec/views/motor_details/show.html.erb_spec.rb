require 'rails_helper'

RSpec.describe "motor_details/show", type: :view do
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

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
  end
end
