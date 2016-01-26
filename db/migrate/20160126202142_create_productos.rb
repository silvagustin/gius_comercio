class CreateProductos < ActiveRecord::Migration
  def change
    create_table :productos do |t|
      t.string :nombre
      t.decimal :precio
      t.integer :stock, precision: 8, scale: 2

      t.timestamps null: false
    end
  end
end
