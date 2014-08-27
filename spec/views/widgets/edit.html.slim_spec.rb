require 'rails_helper'

RSpec.describe "widgets/edit", :type => :view do
  before(:each) do
    @widget = assign(:widget, Widget.create!())
  end

  it "renders the edit widget form" do
    render

    assert_select "form[action=?][method=?]", widget_path(@widget), "post" do
    end
  end
end
