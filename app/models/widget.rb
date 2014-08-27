class Widget < ActiveRecord::Base
  belongs_to :order
  has_one :customer, through: :order
  
  validates :serial_number, presence: true, uniqueness: true

  scope :unassigned, ->{( where order_id: nil)}


end
