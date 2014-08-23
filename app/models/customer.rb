class Customer < ActiveRecord::Base
  has_many :orders
  has_many :widgets, through: :orders
  
  validates :name, :address1, :city, :state, :zip, presence: true
end
