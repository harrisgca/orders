class Widget < ActiveRecord::Base
  belongs_to :order

  validates :serial_number, presence: true
end
