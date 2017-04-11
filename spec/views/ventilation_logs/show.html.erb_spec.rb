require 'rails_helper'

RSpec.describe "ventilation_logs/show", type: :view do
  before(:each) do
    @ventilation_log = assign(:ventilation_log, VentilationLog.create!(
      :fan_id => 2,
      :grid_id => 3,
      :speed => "Speed"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/Speed/)
  end
end
