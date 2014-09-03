class DashboardController < ApplicationController

  def index
    @orders    = Order.all
    @widgets   = Widget.all
    @customers = Customer.all
  end

end