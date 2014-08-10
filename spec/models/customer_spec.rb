require 'rails_helper'

RSpec.describe Customer, :type => :model do
  before (:each) do
    @customer = Customer.new(name: 'Test', address1: '123 Main St', city: "Los Angeles", state: 'California', zip: 91111)
  end

  #required fields are name, address1, city, state and zip
  it 'save if required fields are entered' do 
    expect(@customer.save).to eq(true)
  end

  it 'should not save if no name' do
    @customer.name = nil
    expect(@customer.save).to eq(false)
  end

  it 'should not save if no address1' do
    @customer.address1 = nil
    expect(@customer.save).to eq(false)
  end
  it 'should not save if no city' do
    @customer.city = nil
    expect(@customer.save).to eq(false)
  end
  it 'should not save if no state' do
    @customer.state = nil
    expect(@customer.save).to eq(false)
  end
  it 'should not save if no zip' do
    @customer.zip = nil
    expect(@customer.save).to eq(false)
  end


end
