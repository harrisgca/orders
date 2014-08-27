require 'rails_helper'

RSpec.describe "widgets/new", :type => :view do
  before(:each) do
    assign(:widget, Widget.new())
  end

  it "renders new widget form" do
    render

    assert_select "form[action=?][method=?]", widgets_path, "post" do
    end
  end
end
