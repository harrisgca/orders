class Customer < ActiveRecord::Base
  validates :name, :address1, :city, :state, :zip, presence: true
end
