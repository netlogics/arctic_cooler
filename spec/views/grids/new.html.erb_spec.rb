require 'rails_helper'

RSpec.describe "grids/new", type: :view do
  before(:each) do
    assign(:grid, Grid.new(
      :location_id => 1,
      :name => "MyString"
    ))
  end

  it "renders new grid form" do
    render

    assert_select "form[action=?][method=?]", grids_path, "post" do

      assert_select "input#grid_location_id[name=?]", "grid[location_id]"

      assert_select "input#grid_name[name=?]", "grid[name]"
    end
  end
end
