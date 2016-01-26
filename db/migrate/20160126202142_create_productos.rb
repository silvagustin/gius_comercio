class CreateProductos < ActiveRecord::Migration
  def change
    create_table :productos do |t|
      t.string :nombre
      t.decimal :precio, precision: 8, scale: 2
      t.integer :stock

      t.timestamps null: false
    end
  end
end
