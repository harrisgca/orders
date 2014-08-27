require 'rails_helper'

RSpec.describe "widgets/show", :type => :view do
  before(:each) do
    @widget = assign(:widget, Widget.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
