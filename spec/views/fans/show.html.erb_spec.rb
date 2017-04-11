require 'rails_helper'

RSpec.describe "fans/show", type: :view do
  before(:each) do
    @fan = assign(:fan, Fan.create!(
      :blade_id => 2,
      :motor_id => 3,
      :location_id => 4,
      :state => "State"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/State/)
  end
end
