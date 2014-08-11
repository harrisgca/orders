require 'rails_helper'

RSpec.describe Widget, :type => :model do

  before(:each)do 
    @widget = Widget.new(serial_number: '123456789')
  end

  it 'should save if serial number is present' do 
    expect(@widget.save!).to eq(true)
  end

  it 'should not save if serial number is not present' do 
    @widget.serial_number = nil
    expect(@widget.save).to eq(false)
  end

end
