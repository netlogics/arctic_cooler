require 'rails_helper'

RSpec.describe "blades/new", type: :view do
  before(:each) do
    assign(:blade, Blade.new(
      :length => "",
      :length => "",
      :width => "",
      :width => "",
      :type => ""
    ))
  end

  it "renders new blade form" do
    render

    assert_select "form[action=?][method=?]", blades_path, "post" do

      assert_select "input#blade_length[name=?]", "blade[length]"

      assert_select "input#blade_length[name=?]", "blade[length]"

      assert_select "input#blade_width[name=?]", "blade[width]"

      assert_select "input#blade_width[name=?]", "blade[width]"

      assert_select "input#blade_type[name=?]", "blade[type]"
    end
  end
end
