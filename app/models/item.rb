class Item < ActiveRecord::Base

  attr_accessor :producto_nombre

  belongs_to :producto
  belongs_to :compra

  def producto_nombre=(un_nombre)
    self.producto = Producto.find_by nombre: un_nombre
  end

  def producto_nombre
    producto.nombre if producto
  end

end
