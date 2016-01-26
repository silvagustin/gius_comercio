class Producto < ActiveRecord::Base
  before_save :default_stock

  private

  def default_stock
    self.stock ||= 0
  end
end
