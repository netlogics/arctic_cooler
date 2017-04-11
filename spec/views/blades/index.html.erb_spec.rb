require 'rails_helper'

RSpec.describe "blades/index", type: :view do
  before(:each) do
    assign(:blades, [
      Blade.create!(
        :length => "",
        :length => "",
        :width => "",
        :width => "",
        :type => "Type"
      ),
      Blade.create!(
        :length => "",
        :length => "",
        :width => "",
        :width => "",
        :type => "Type"
      )
    ])
  end

  it "renders a list of blades" do
    render
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Type".to_s, :count => 2
  end
end
