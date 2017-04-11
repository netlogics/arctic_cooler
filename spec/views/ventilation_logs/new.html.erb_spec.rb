require 'rails_helper'

RSpec.describe "ventilation_logs/new", type: :view do
  before(:each) do
    assign(:ventilation_log, VentilationLog.new(
      :fan_id => 1,
      :grid_id => 1,
      :speed => "MyString"
    ))
  end

  it "renders new ventilation_log form" do
    render

    assert_select "form[action=?][method=?]", ventilation_logs_path, "post" do

      assert_select "input#ventilation_log_fan_id[name=?]", "ventilation_log[fan_id]"

      assert_select "input#ventilation_log_grid_id[name=?]", "ventilation_log[grid_id]"

      assert_select "input#ventilation_log_speed[name=?]", "ventilation_log[speed]"
    end
  end
end
