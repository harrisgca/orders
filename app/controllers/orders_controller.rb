class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :edit, :update, :destroy, :assign]


  # GET /orders
  def index
    @orders           = Order.all
    @open_orders      = Order.open_orders
    @already_assigned = Order.already_assigned
    @already_shipped  = Order.already_shipped
    @closed_orders    = Order.closed_orders
  end

  # GET /orders/1
  def show
  end

  # GET /orders/new
  def new
    @order = Order.new
  end

  # GET /orders/1/edit
  def edit
  end

  # POST /orders

  def create
    @order = Order.new(order_params)
    if @order.save
      redirect_to @order, notice: 'Order was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /orders/1
  def update
    if @order.update(order_params)
      redirect_to @order, notice: 'Order was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /orders/1
  def destroy
    @order.destroy
    redirect_to orders_url, notice: 'Order was successfully destroyed.'
  end

  def assign
    @unassigned_widgets = Widget.unassigned
    @assigned_widgets = @order.widgets
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_params
      params.require(:order).permit(:customer_id, :quantity, :order_number)
    end
end
