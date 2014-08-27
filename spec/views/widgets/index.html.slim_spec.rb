require 'rails_helper'

RSpec.describe "widgets/index", :type => :view do
  before(:each) do
    assign(:widgets, [
      Widget.create!(),
      Widget.create!()
    ])
  end

  it "renders a list of widgets" do
    render
  end
end
