class Compra < ActiveRecord::Base
  has_many :items
  #accepts_nested_attributes_for :items, reject_if: :all_blank, allow_destroy: true

  def confirmar
    for item in items
      item.producto.update stock: item.producto.stock + item.cantidad
    end
  end

end
