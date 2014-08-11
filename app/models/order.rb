class Order < ActiveRecord::Base
  belongs_to :customer
  has_many :widgets

  validates :customer_id, presence: true
end
