require 'rails_helper'

RSpec.describe Order, :type => :model do
  before :each do
    @order = Order.new(customer_id: 1)
  end

  it 'should save if customer id is present' do
    expect(@order.save!).to eq(true)
  end

  it 'should not save if customer id is not present' do
    @order.customer_id = nil
    expect(@order.save).to eq(false)
  end
end
