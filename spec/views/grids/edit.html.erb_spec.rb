require 'rails_helper'

RSpec.describe "grids/edit", type: :view do
  before(:each) do
    @grid = assign(:grid, Grid.create!(
      :location_id => 1,
      :name => "MyString"
    ))
  end

  it "renders the edit grid form" do
    render

    assert_select "form[action=?][method=?]", grid_path(@grid), "post" do

      assert_select "input#grid_location_id[name=?]", "grid[location_id]"

      assert_select "input#grid_name[name=?]", "grid[name]"
    end
  end
end
