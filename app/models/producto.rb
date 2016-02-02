class Producto < ActiveRecord::Base
  has_many :items

  accepts_nested_attributes_for :items

  #before_save :default_stock
  after_initialize :default_stock
  #after_create :default_stock

  validates :nombre, presence: true
  validates :precio, numericality: {greater_than_or_equal_to: 0.01}
  validates :stock, numericality: {greather_than_or_equal_to: 0}

  private

  def default_stock
    self.stock ||= 0
  end
end
