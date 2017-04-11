require 'rails_helper'

RSpec.describe "blades/edit", type: :view do
  before(:each) do
    @blade = assign(:blade, Blade.create!(
      :length => "",
      :length => "",
      :width => "",
      :width => "",
      :type => ""
    ))
  end

  it "renders the edit blade form" do
    render

    assert_select "form[action=?][method=?]", blade_path(@blade), "post" do

      assert_select "input#blade_length[name=?]", "blade[length]"

      assert_select "input#blade_length[name=?]", "blade[length]"

      assert_select "input#blade_width[name=?]", "blade[width]"

      assert_select "input#blade_width[name=?]", "blade[width]"

      assert_select "input#blade_type[name=?]", "blade[type]"
    end
  end
end
