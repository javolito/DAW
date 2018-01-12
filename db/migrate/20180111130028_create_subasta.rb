class CreateSubasta < ActiveRecord::Migration
  def change
    create_table :subasta do |t|
      t.integer :id_coche
      t.integer :comprador
      t.datetime :fecha_publicacion
      t.datetime :fecha_limite
      t.integer :compra_ya
      t.integer :puja_actual

      t.timestamps
    end
  end
end
