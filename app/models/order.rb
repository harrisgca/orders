class Order < ActiveRecord::Base
  include AASM

  belongs_to :customer
  has_many :widgets

  validates :customer_id, :quantity, presence: true
  before_create :unique_order_number

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

  def short_order_number
    self.order_number[0..3] + ".."
  end

  private
    def unique_order_number
      #First 3 letters of customer name + order qty + year + random number
      customer = self.customer.name
      abbrev   = customer.split.join[0..2].upcase
      self.order_number =  abbrev + Time.now.year.to_s + (rand(1..10000).to_s.rjust(8,'0'))
    end
end
