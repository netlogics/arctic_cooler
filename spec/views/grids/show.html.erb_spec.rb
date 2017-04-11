require 'rails_helper'

RSpec.describe "grids/show", type: :view do
  before(:each) do
    @grid = assign(:grid, Grid.create!(
      :location_id => 2,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Name/)
  end
end
