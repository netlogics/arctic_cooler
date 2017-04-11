require 'rails_helper'

RSpec.describe "ventilation_logs/index", type: :view do
  before(:each) do
    assign(:ventilation_logs, [
      VentilationLog.create!(
        :fan_id => 2,
        :grid_id => 3,
        :speed => "Speed"
      ),
      VentilationLog.create!(
        :fan_id => 2,
        :grid_id => 3,
        :speed => "Speed"
      )
    ])
  end

  it "renders a list of ventilation_logs" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "Speed".to_s, :count => 2
  end
end
