class Order < ActiveRecord::Base
  belongs_to :customer

  validates :customer_id, presence: true
end
