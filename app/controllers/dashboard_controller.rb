class DashboardController < ApplicationController

  def index
    @orders           = Order.all.limit(10).order('created_at DESC')
    @widgets          = Widget.all
    @assigned_widgets = Widget.assigned.limit(10).order('updated_at DESC')
    @customers        = Customer.all.limit(10)
  end

end