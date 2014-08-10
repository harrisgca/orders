class Customer < ActiveRecord::Base
  has_many :orders
  
  validates :name, :address1, :city, :state, :zip, presence: true
end
