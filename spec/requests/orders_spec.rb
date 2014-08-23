require 'rails_helper'

RSpec.describe "Orders", :type => :request do
  describe "GET /orders" do
    it "works! (now write some real specs)" do
      get orders_path
      expect(response.status).to be(200)
    end
  end
end
