class Order < ActiveRecord::Base
  include AASM

  belongs_to :customer
  has_many :widgets

  validates :customer_id, :quantity, presence: true

  scope :open_orders, -> { where(status: 'open')}
  scope :already_assigned, -> { where(status: 'awaiting_shipment')}
  scope :already_shipped, -> { where(status: 'shipped')}
  scope :closed_orders, -> { where(status: 'closed')}

  aasm :column => 'status' do
    state :open, :intial => true
    state :awaiting_shipment
    state :shipped
    state :closed

    event :assign do
      transitions :from => :open, :to => :awaiting_shipment
    end

    event :ship do
      transitions :from => :awaiting_shipment, :to => :shipped
    end

    event :delivered do
      transitions :from => :shipped, :to => :closed
    end
  end #end aasm

  def self.statuses 
    self.aasm.states.map(&:name)
  end
end
