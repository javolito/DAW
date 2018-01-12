class CreateCompraventa < ActiveRecord::Migration
  def change
    create_table :compraventa do |t|
      t.integer :id_coche
      t.integer :comprador
      t.datetime :fecha_publicacion
      t.datetime :fecha_compra
      t.integer :precio

      t.timestamps
    end
  end
end
