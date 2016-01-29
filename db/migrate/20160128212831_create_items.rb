class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :cantidad
      t.decimal :precio, precision: 8, scale: 2
      t.references :producto, index: true, foreign_key: true
      t.belongs_to :compra, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
